#!/usr/bin/env python3
"""
# Data Manager Codebase Snapshot Generator

## Overview
This script generates a comprehensive snapshot of a Dart codebase in markdown and JSON formats,
specifically designed to help AI assistants understand the project structure and provide more
accurate assistance with development tasks.

## Development Story
The script was developed iteratively with the following enhancements:
1. Initial version: Basic extraction of classes, methods, and properties
2. Added exclusion of generated files (.g.dart and .freezed.dart)
3. Added component categorization (entities, repositories, services, value objects)
4. Added file descriptions extraction and brief summaries
5. Added architectural context about the DDD and Clean Architecture patterns
6. Added practical usage examples for key components
7. Added UML diagrams to visualize component relationships

## Requirements
The script fulfills these key requirements:
- Recursively scans codebase for Dart files (excluding generated files)
- Extracts information about classes, functions, typedefs and enums
- Categorizes components based on file paths (entities, repositories, services, etc.)
- Generates a comprehensive snapshot.md file with:
  - Statistics about the codebase
  - Architectural overview describing patterns and principles
  - Domain entities and their structures
  - Value objects, repositories and their interfaces
  - Services and their functions
  - Usage examples showing how to use key components
  - UML diagrams visualizing component relationships
  - Alphabetical indexes of all classes and functions
- Creates a machine-readable JSON index of all components

## Usage
Run this script from the project root:
```
python generate_snapshot.py
```

## Output
- snapshot.md: Markdown documentation of the codebase for humans and AI
- snapshot.json: Machine-readable index of all components
"""

import os
import re
import glob
import json
import logging
from collections import defaultdict

# Configure logging
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    filename='snapshot_generator.log'
)
logger = logging.getLogger('snapshot_generator')

def debug_regex(pattern, text, file_path=None, pattern_name="unnamed"):
    """Helper function to debug regex patterns with detailed logging"""
    try:
        if isinstance(pattern, str):
            compiled = re.compile(pattern, re.DOTALL | re.MULTILINE)
        else:
            compiled = pattern
        
        matches = list(compiled.finditer(text))
        if matches:
            logger.debug(f"Found {len(matches)} matches for pattern '{pattern_name}' in {file_path or 'text'}")
            for i, match in enumerate(matches[:2]):  # Log details for first 2 matches only
                logger.debug(f"Match {i+1}: {match.groups()}")
                
            return matches
        else:
            logger.debug(f"No matches for pattern '{pattern_name}' in {file_path or 'text'}")
            return []
    except Exception as e:
        logger.error(f"Regex error with pattern '{pattern_name}': {e}")
        return []

def create_codebase_snapshot(project_path, output_file="snapshot.md", json_output="snapshot.json"):
    """
    Generate a structured markdown snapshot of the codebase for AI consumption.
    
    This function scans a Flutter/Dart codebase and generates comprehensive
    documentation of its structure, components, and architecture. It's specifically
    designed to help AI assistants understand the codebase and provide more
    accurate assistance.
    
    Args:
        project_path: Root path of the project to scan
        output_file: Path where markdown output will be written
        json_output: Path where JSON index will be written
    """
    # Filter out generated files
    all_dart_files = glob.glob(f"{project_path}/**/*.dart", recursive=True)
    dart_files = [f for f in all_dart_files 
                 if not (f.endswith('.g.dart') or f.endswith('.freezed.dart'))]
    
    # Data structures to collect information
    classes = {}
    interfaces = {}
    enums = {}
    typedefs = {}
    functions = {}
    file_summaries = {}
    file_imports = defaultdict(list)
    file_descriptions = {}
    
    # Categorized collections
    entities = {}
    repositories = {}
    services = {}
    value_objects = {}
    
    for file_path in dart_files:
        rel_path = os.path.relpath(file_path, project_path)
        with open(file_path, 'r', encoding='utf-8') as f:
            try:
                content = f.read()
                
                # Extract file-level documentation
                file_doc = re.search(r'\/\/\/\s*(.*?)(?=\n\n|\nimport)', content, re.DOTALL)
                file_summary = file_doc.group(1).strip() if file_doc else "No documentation"
                file_summaries[rel_path] = file_summary
                
                # Extract a brief description for the file
                file_descriptions[rel_path] = extract_file_description(file_path, rel_path)
                
                # Extract imports
                imports = re.findall(r'import\s+[\'"]([^\'"]+)[\'"]', content)
                file_imports[rel_path] = imports
                
                # Categorize file based on path
                category = 'other'
                if '/entities/' in rel_path:
                    category = 'entity'
                elif '/repositories/' in rel_path:
                    category = 'repository'  
                elif '/services/' in rel_path:
                    category = 'service'
                elif '/value_objects/' in rel_path:
                    category = 'value_object'
                
                # Extract classes with their methods and properties
                class_pattern = r'(?:abstract |sealed )?class\s+(\w+)(?:<[^>]+>)?(?:\s+with\s+[^{]+)?(?:\s+implements\s+[^{]+)?(?:\s+extends\s+[^{]+)?\s*{(.*?)(?:^\})'
                class_matches = debug_regex(
                    class_pattern, 
                    content, 
                    file_path=file_path, 
                    pattern_name="class_definition"
                )
                
                for match in class_matches:
                    class_name = match.group(1)
                    class_body = match.group(2)
                    
                    # Extract methods
                    methods = re.finditer(
                        r'(?:\/\/\/\s*(.*?))?(?=\n\s*(?:@\w+\s+)*)(?:\s*@\w+\s+)*\s*(?:static\s+)?(?:final\s+)?(?:const\s+)?(?:\w+(?:<[^>]+>)?\s+)?(\w+)\s*\((.*?)\)(?:\s*=>\s*[^;]+|\s*\{)',
                        class_body,
                        re.DOTALL
                    )
                    
                    methods_info = []
                    for method in methods:
                        doc = method.group(1).strip() if method.group(1) else ""
                        method_name = method.group(2)
                        params = method.group(3).strip()
                        methods_info.append({
                            "name": method_name,
                            "params": params,
                            "doc": doc
                        })
                    
                    # Extract properties
                    properties = re.finditer(
                        r'(?:\/\/\/\s*(.*?))?(?=\n\s*(?:@\w+\s+)*)(?:\s*@\w+\s+)*\s*(?:final\s+)?(?:static\s+)?(?:const\s+)?(\w+(?:<[^>]+>)?)\s+(\w+)(?:\s*=\s*[^;]+)?;',
                        class_body,
                        re.DOTALL
                    )
                    
                    properties_info = []
                    for prop in properties:
                        doc = prop.group(1).strip() if prop.group(1) else ""
                        prop_type = prop.group(2)
                        prop_name = prop.group(3)
                        properties_info.append({
                            "name": prop_name,
                            "type": prop_type,
                            "doc": doc
                        })
                    
                    classes[class_name] = {
                        "file": rel_path,
                        "methods": methods_info,
                        "properties": properties_info
                    }
                    
                    # Categorize class based on path
                    if category == 'entity':
                        entities[class_name] = classes[class_name]
                    elif category == 'repository':
                        repositories[class_name] = classes[class_name]
                    elif category == 'service':
                        services[class_name] = classes[class_name]
                    elif category == 'value_object':
                        value_objects[class_name] = classes[class_name]
                
                # Extract interfaces (abstract classes)
                interface_matches = re.finditer(
                    r'abstract\s+class\s+(\w+)(?:<[^>]+>)?(?:\s+implements\s+[^{]+)?\s*{(.*?)(?:^\})', 
                    content, 
                    re.DOTALL | re.MULTILINE
                )
                
                for match in interface_matches:
                    interface_name = match.group(1)
                    interface_body = match.group(2)
                    
                    # Extract methods
                    methods = re.finditer(
                        r'(?:\/\/\/\s*(.*?))?(?=\n\s*(?:@\w+\s+)*)(?:\s*@\w+\s+)*\s*(?:Future<[^>]+>\s+|\w+(?:<[^>]+>)?\s+)?(\w+)\s*\((.*?)\)(?:\s*;\s*|\s*\{)',
                        interface_body,
                        re.DOTALL
                    )
                    
                    methods_info = []
                    for method in methods:
                        doc = method.group(1).strip() if method.group(1) else ""
                        method_name = method.group(2)
                        params = method.group(3).strip()
                        methods_info.append({
                            "name": method_name,
                            "params": params,
                            "doc": doc
                        })
                    
                    interfaces[interface_name] = {
                        "file": rel_path,
                        "methods": methods_info
                    }
                
                # Extract typedefs
                typedef_matches = re.finditer(r'typedef\s+(\w+)(?:<[^>]+>)?\s*=\s*([^;]+);', content)
                for match in typedef_matches:
                    typedef_name = match.group(1)
                    typedef_type = match.group(2).strip()
                    typedefs[typedef_name] = {
                        "file": rel_path,
                        "type": typedef_type
                    }
                
                # Extract enums
                enum_matches = re.finditer(r'enum\s+(\w+)\s*{([^}]+)}', content)
                for match in enum_matches:
                    enum_name = match.group(1)
                    enum_values = [v.strip() for v in match.group(2).split(",") if v.strip()]
                    enums[enum_name] = {
                        "file": rel_path,
                        "values": enum_values
                    }
                
                # Extract top-level functions
                func_matches = re.finditer(
                    r'(?:\/\/\/\s*(.*?))?(?=\n\s*(?:@\w+\s+)*)(?:\s*@\w+\s+)*\s*(?:Future<[^>]+>\s+|\w+(?:<[^>]+>)?\s+)?(\w+)\s*\((.*?)\)(?:\s*=>\s*[^;]+|\s*\{)',
                    content,
                    re.DOTALL
                )
                
                for match in func_matches:
                    # Skip if this looks like it's inside a class
                    if re.search(r'class\s+\w+[^{]*{[^}]*' + re.escape(match.group(0)), content, re.DOTALL):
                        continue
                    
                    doc = match.group(1).strip() if match.group(1) else ""
                    func_name = match.group(2)
                    params = match.group(3).strip()
                    
                    functions[func_name] = {
                        "file": rel_path,
                        "params": params,
                        "doc": doc
                    }
                
            except Exception as e:
                print(f"Error processing {file_path}: {e}")
    
    # Collect statistics
    stats = {
        'total_files': len(dart_files),
        'total_classes': len(classes),
        'total_interfaces': len(interfaces),
        'total_enums': len(enums),
        'total_typedefs': len(typedefs),
        'total_functions': len(functions),
        'entities_count': len(entities),
        'repositories_count': len(repositories),
        'services_count': len(services),
        'value_objects_count': len(value_objects),
    }
    
    # Create JSON index
    json_index = {
        'stats': stats,
        'classes': classes,
        'interfaces': interfaces,
        'enums': enums,
        'typedefs': typedefs,
        'functions': functions,
        'categories': {
            'entities': list(entities.keys()),
            'repositories': list(repositories.keys()),
            'services': list(services.keys()),
            'value_objects': list(value_objects.keys()),
        }
    }
    
    # Write JSON output
    with open(json_output, 'w', encoding='utf-8') as f:
        json.dump(json_index, f, indent=2)
    
    # Create the snapshot markdown file
    with open(output_file, 'w', encoding='utf-8') as f:
        # Write header
        f.write("# Data Manager Project Codebase Snapshot\n\n")
        f.write("*Generated for AI-assisted development*\n\n")
        
        # Write table of contents
        f.write("## Table of Contents\n\n")
        f.write("1. [Codebase Statistics](#codebase-statistics)\n")
        f.write("2. [Architecture Overview](#architecture-overview)\n")
        f.write("3. [Project Structure](#project-structure)\n")
        f.write("4. [Usage Examples](#usage-examples)\n")
        f.write("5. [Domain Entities](#domain-entities)\n")
        f.write("6. [Value Objects](#value-objects)\n")
        f.write("7. [Repositories](#repositories)\n")
        f.write("8. [Services](#services)\n")
        f.write("9. [Classes](#classes)\n")
        f.write("10. [Interfaces](#interfaces)\n")
        f.write("11. [Enums](#enums)\n")
        f.write("12. [Typedefs](#typedefs)\n")
        f.write("13. [Functions](#functions)\n")
        f.write("14. [UML Diagrams](#uml-diagrams)\n")
        f.write("15. [File Dependencies](#file-dependencies)\n")
        f.write("16. [Alphabetical Index](#alphabetical-index)\n\n")
        
        # Write statistics section
        f.write("## Codebase Statistics\n\n")
        f.write("```\n")
        f.write(f"Total Dart Files: {stats['total_files']}\n")
        f.write(f"Total Classes: {stats['total_classes']}\n")
        f.write(f"Total Interfaces: {stats['total_interfaces']}\n")
        f.write(f"Total Enums: {stats['total_enums']}\n")
        f.write(f"Total Typedefs: {stats['total_typedefs']}\n")
        f.write(f"Total Functions: {stats['total_functions']}\n")
        f.write(f"\nDomain Components:\n")
        f.write(f"  Entities: {stats['entities_count']}\n")
        f.write(f"  Repositories: {stats['repositories_count']}\n")
        f.write(f"  Services: {stats['services_count']}\n")
        f.write(f"  Value Objects: {stats['value_objects_count']}\n")
        f.write("```\n\n")
        
        # Write architecture overview section
        f.write(generate_architecture_overview())
        f.write("\n\n")
        
        # Write usage examples section
        f.write(generate_usage_examples())
        f.write("\n\n")
        
        # Project structure section
        f.write("## Project Structure\n\n")
        for file_path in sorted(file_descriptions.keys()):
            description = file_descriptions[file_path]
            f.write(f"- `{file_path}` - {description}\n")
        f.write("\n")
        
        # Classes section
        f.write("## Classes\n\n")
        for class_name, info in sorted(classes.items()):
            f.write(f"### `{class_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            
            if info['properties']:
                f.write("**Properties:**\n\n")
                for prop in info['properties']:
                    doc = f" - {prop['doc']}" if prop['doc'] else ""
                    f.write(f"- `{prop['type']} {prop['name']}`{doc}\n")
                f.write("\n")
            
            if info['methods']:
                f.write("**Methods:**\n\n")
                for method in info['methods']:
                    doc = f" - {method['doc']}" if method['doc'] else ""
                    f.write(f"- `{method['name']}({method['params']})`{doc}\n")
                f.write("\n")
        
        # Interfaces section
        f.write("## Interfaces\n\n")
        for interface_name, info in sorted(interfaces.items()):
            f.write(f"### `{interface_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            
            if info['methods']:
                f.write("**Methods:**\n\n")
                for method in info['methods']:
                    doc = f" - {method['doc']}" if method['doc'] else ""
                    f.write(f"- `{method['name']}({method['params']})`{doc}\n")
                f.write("\n")
        
        # Enums section
        f.write("## Enums\n\n")
        for enum_name, info in sorted(enums.items()):
            f.write(f"### `{enum_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            f.write("**Values:**\n\n")
            for value in info['values']:
                f.write(f"- `{value}`\n")
            f.write("\n")
        
        # Typedefs section
        f.write("## Typedefs\n\n")
        for typedef_name, info in sorted(typedefs.items()):
            f.write(f"### `{typedef_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            f.write(f"**Definition:** `{typedef_name} = {info['type']}`\n\n")
        
        # Functions section
        f.write("## Functions\n\n")
        for func_name, info in sorted(functions.items()):
            f.write(f"### `{func_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            doc = f"**Description:** {info['doc']}\n\n" if info['doc'] else ""
            f.write(doc)
            f.write(f"**Signature:** `{func_name}({info['params']})`\n\n")
        
        # UML diagrams section
        f.write(generate_uml_diagrams(classes, entities, repositories, interfaces, value_objects))
        
        # File dependencies section
        f.write("## File Dependencies\n\n")
        for file_path, imports in sorted(file_imports.items()):
            f.write(f"### `{file_path}`\n\n")
            if imports:
                f.write("**Imports:**\n\n")
                for imp in imports:
                    f.write(f"- `{imp}`\n")
                f.write("\n")
            else:
                f.write("No imports.\n\n")
                
        # Write Domain Entities section
        f.write("## Domain Entities\n\n")
        for entity_name, info in sorted(entities.items()):
            f.write(f"### `{entity_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            
            if info['properties']:
                f.write("**Properties:**\n\n")
                for prop in info['properties']:
                    doc = f" - {prop['doc']}" if prop['doc'] else ""
                    f.write(f"- `{prop['type']} {prop['name']}`{doc}\n")
                f.write("\n")
            
            if info['methods']:
                f.write("**Methods:**\n\n")
                for method in info['methods']:
                    doc = f" - {method['doc']}" if method['doc'] else ""
                    f.write(f"- `{method['name']}({method['params']})`{doc}\n")
                f.write("\n")
        
        # Write Value Objects section
        f.write("## Value Objects\n\n")
        for vo_name, info in sorted(value_objects.items()):
            f.write(f"### `{vo_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            
            if info['properties']:
                f.write("**Properties:**\n\n")
                for prop in info['properties']:
                    doc = f" - {prop['doc']}" if prop['doc'] else ""
                    f.write(f"- `{prop['type']} {prop['name']}`{doc}\n")
                f.write("\n")
            
            if info['methods']:
                f.write("**Methods:**\n\n")
                for method in info['methods']:
                    doc = f" - {method['doc']}" if method['doc'] else ""
                    f.write(f"- `{method['name']}({method['params']})`{doc}\n")
                f.write("\n")
                
        # Write Repositories section  
        f.write("## Repositories\n\n")
        for repo_name, info in sorted(repositories.items()):
            f.write(f"### `{repo_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            
            if info['properties']:
                f.write("**Properties:**\n\n")
                for prop in info['properties']:
                    doc = f" - {prop['doc']}" if prop['doc'] else ""
                    f.write(f"- `{prop['type']} {prop['name']}`{doc}\n")
                f.write("\n")
            
            if info['methods']:
                f.write("**Methods:**\n\n")
                for method in info['methods']:
                    doc = f" - {method['doc']}" if method['doc'] else ""
                    f.write(f"- `{method['name']}({method['params']})`{doc}\n")
                f.write("\n")
                
        # Write Services section
        f.write("## Services\n\n")
        for service_name, info in sorted(services.items()):
            f.write(f"### `{service_name}`\n\n")
            f.write(f"**File:** `{info['file']}`\n\n")
            
            if info['properties']:
                f.write("**Properties:**\n\n")
                for prop in info['properties']:
                    doc = f" - {prop['doc']}" if prop['doc'] else ""
                    f.write(f"- `{prop['type']} {prop['name']}`{doc}\n")
                f.write("\n")
            
            if info['methods']:
                f.write("**Methods:**\n\n")
                for method in info['methods']:
                    doc = f" - {method['doc']}" if method['doc'] else ""
                    f.write(f"- `{method['name']}({method['params']})`{doc}\n")
                f.write("\n")
                
        # Add Alphabetical Index
        f.write("## Alphabetical Index\n\n")
        
        # All classes index
        f.write("### Classes\n\n")
        for class_name in sorted(classes.keys()):
            file_path = classes[class_name]["file"]
            f.write(f"- `{class_name}` - `{file_path}`\n")
        f.write("\n")
        
        # Functions index
        if functions:
            f.write("### Functions\n\n")
            for func_name in sorted(functions.keys()):
                file_path = functions[func_name]["file"]
                f.write(f"- `{func_name}` - `{file_path}`\n")
            f.write("\n")
    
    print(f"Snapshot generated: {output_file}")
    print(f"JSON index generated: {json_output}")

def extract_file_description(file_path, rel_path):
    """Extract a brief description from the file's header comment."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
            
        # Look for file-level documentation comments
        file_doc = re.search(r'\/\/\/\s*(.*?)(?=\n\n|\nimport)', content, re.DOTALL)
        if file_doc:
            # Clean up multiline comments and return first sentence or first 100 chars
            description = file_doc.group(1).strip().replace('\n///', ' ').replace('\n//', ' ')
            # Get first sentence or limit to reasonable length
            match = re.search(r'^(.*?\.)\s', description)
            if match:
                return match.group(1)
            else:
                return description[:100] + ('...' if len(description) > 100 else '')
        
        # Fallback for files without documentation
        # Determine description based on file path and name
        file_name = os.path.basename(rel_path)
        if 'repository' in rel_path:
            return f"Repository for managing {file_name.replace('_repository.dart', '').replace('.dart', '').replace('_', ' ')} data"
        elif 'entity' in rel_path:
            return f"Entity definition for {file_name.replace('.dart', '').replace('_', ' ')}"
        elif 'value_objects' in rel_path:
            return f"Value objects related to {file_name.replace('_value_objects.dart', '').replace('.dart', '').replace('_', ' ')}"
        elif 'service' in rel_path:
            return f"Service for {file_name.replace('_service.dart', '').replace('.dart', '').replace('_', ' ')} operations"
        elif 'extensions' in rel_path:
            return f"Extension methods for {file_name.replace('_extensions.dart', '').replace('.dart', '').replace('_', ' ')}"
        elif 'providers' in rel_path:
            return f"Provider for {file_name.replace('_provider.dart', '').replace('.dart', '').replace('_', ' ')}"
        elif 'exceptions.dart' in file_name:
            return "Domain exception definitions"
        elif 'core' in rel_path:
            return "Core domain primitives and abstractions"
        else:
            return "Component of the data manager system"
            
    except Exception as e:
        return "File description unavailable"

def generate_architecture_overview():
    """Generate a detailed description of the project's architecture pattern."""
    overview = """## Architecture Overview

This project implements a **Domain-Driven Design (DDD)** architecture with **Clean Architecture** principles, organized into distinct layers:

### Architectural Layers

1. **Domain Layer** (`lib/src/domain/`)
   - Core business logic and rules independent of any external frameworks
   - Contains entities, value objects, domain events, and repository interfaces
   - Implements the Aggregate pattern for maintaining invariants across entity clusters

2. **Application Layer** (`lib/src/application/`)
   - Orchestrates the flow of data between the domain and infrastructure layers
   - Contains services, providers, and use cases that implement business workflows
   - Handles schema migrations and other cross-cutting concerns

3. **Infrastructure Layer** (`lib/src/infrastructure/`)
   - Implements technical capabilities required by the application
   - Contains repository implementations, data sources, and external service clients

### Key Design Patterns

- **Entity-Component System**: Core entities use a component-based architecture for flexible composition
- **Repository Pattern**: Abstracts data access through repository interfaces
- **Event Sourcing**: Domain events are the source of truth for entity state
- **Hexagonal Architecture**: Domain core is isolated from technical concerns through ports and adapters

### Domain Model Structure

- **Aggregates**: Clusters of entities with a root entity that maintains invariants
- **Value Objects**: Immutable objects representing domain concepts without identity
- **Domain Events**: Represent changes that have occurred in the domain
- **Factories**: Create complex domain objects with proper validation and relationship management

### Data Flow

```
User Action → Application Service → Domain Model → Repository Interface → Infrastructure Repository → Data Store
            ↓                                                                                        ↑
            └─── Domain Events ─── Event Store ─── Event Sourcing ─── Event Replay ──────────────────┘
```

### Testing Approach

- **Domain Layer**: Unit tests for business rules and invariants
- **Application Layer**: Integration tests for workflows and use cases
- **Infrastructure Layer**: Integration tests with external dependencies
- **End-to-End**: Full system tests via API endpoints

This architecture ensures high maintainability, testability, and separation of concerns while keeping the domain model at the center of the application.
"""
    return overview

def generate_usage_examples():
    """Generate code examples showing how to use key components."""
    examples = """## Usage Examples

### Creating Entities

```dart
// Creating a new site using the EntityBuilder
final siteEntity = EntityBuilder<SiteModel>()
  .withName('Headquarters')
  .withUser(currentUser)
  .withData(SiteModel(
    name: 'Headquarters',
    ownerId: ownerId,
    address: '123 Main St, City, Country',
    latitude: 37.7749,
    longitude: -122.4194,
  ))
  .withDescription('Corporate headquarters location')
  .withTags(['headquarters', 'office'])
  .withPriority(EntityPriority.high)
  .build();

// Creating an entity with direct factory method
final equipmentEntity = EntityFactory.create(
  EntityCreateConfig(
    name: 'Main Server',
    user: currentUser,
    data: EquipmentModel(
      name: 'Main Server',
      siteId: siteEntity.id,
      type: EquipmentType.pcs,
      serialNum: 'SRV-2023-001',
    ),
  ),
);
```

### Working with Repositories

```dart
// Fetching an entity by ID
final entityRepository = getIt<IEntityRepository<EquipmentModel>>();
final equipment = await entityRepository.getById(equipmentId);

// Updating an entity
final updatedEquipment = equipment.copyWith(
  data: equipment.data.copyWith(
    specs: {'cpu': '8-core', 'ram': '64GB', 'storage': '2TB'}
  )
);
await entityRepository.update(updatedEquipment.id, updatedEquipment);

// Querying entities with filters
final queryParams = QueryParams(
  filters: {'type': EquipmentType.pcs.name},
  sort: {'name': SortOrder.ascending},
);
final results = await entityRepository.query(queryParams);
```

### Working with Domain Events

```dart
// Creating a domain event
final event = DomainEventModel.entityUpdated(
  id: EventId.generate(),
  entityId: equipment.id,
  entityType: 'Equipment',
  action: UserAction.fromAuthUser(currentUser),
  changes: {
    'status': 'active',
    'lastChecked': DateTime.now().toIso8601String(),
  },
);

// Storing an event
final eventStore = getIt<IEventStore>();
await eventStore.store(event);

// Subscribing to events
eventStore.watchEvents(equipment.id).listen((event) {
  print('Entity ${event.entityId} was updated: ${event.changes}');
});
```

### Working with Hierarchy

```dart
// Adding a child to a parent entity
final (updatedSite, updatedEquipment) = 
  BaseEntityModel.addChildAndUpdateChild(siteEntity, equipmentEntity);

// Removing a child from a parent
final (updatedSite, removedEquipment) = 
  BaseEntityModel.removeChildAndUpdateChild(siteEntity, equipmentEntity);

// Navigating hierarchy
if (equipment.isDescendantOf(siteEntity)) {
  print('Equipment belongs to site: ${siteEntity.name}');
}

// Fetching children
final children = await entityRepository.getChildren(
  siteEntity.id,
  HierarchyParams(direction: HierarchyDirection.children),
);
```

### Working with Value Objects

```dart
// Creating a contact info value object
final contact = ContactInfo(
  contactName: 'John Doe',
  companyName: 'Acme Corp',
  phone: PhoneNumber(
    number: '555-1234',
    countryCode: '1',
  ),
  email: EmailAddress('john.doe@acme.com'),
  address: Address(
    street: '123 Main St',
    city: 'San Francisco',
    state: 'CA',
    country: 'USA',
    postalCode: '94105',
  ),
);

// Using reference numbers
final refNum = ReferenceNumber.parse('INV-1234-A');
print(refNum.formatted); // Outputs: INV-1234-A

// Working with time windows
final schedule = Schedule(
  window: TimeWindow(
    start: DateTime(2023, 6, 1, 9, 0),
    end: DateTime(2023, 6, 1, 17, 0),
  ),
  breakTimes: [DateTime(2023, 6, 1, 12, 0)],
);
final meetingTime = DateTime(2023, 6, 1, 10, 0);
if (schedule.isAvailable(meetingTime)) {
  print('Meeting can be scheduled at this time');
}
```

### Error Handling

```dart
try {
  await repository.update(entityId, updatedEntity);
} on EntityNotFoundException catch (e) {
  print('Entity not found: ${e.id}');
} on ValidationException catch (e) {
  print('Validation error in field ${e.field}: ${e.invalidValue}');
} on LockException catch (e) {
  print('Entity is locked: ${e.message}');
} on DataManagerException catch (e) {
  print('Operation failed: ${e.message}');
  if (e.details != null) print('Details: ${e.details}');
}
```
"""
    return examples

def generate_uml_diagrams(classes, entities, repositories, interfaces, value_objects):
    """Generate UML diagrams using Mermaid syntax for key components."""
    
    # Core domain model diagram
    domain_diagram = """## UML Diagrams

### Core Domain Model

```mermaid
classDiagram
    class BaseEntityModel {
        +CoreEntity core
        +T data
        +addChildEntity(childId)
        +removeChildEntity(childId)
        +isDescendantOf(parent)
    }
    
    class CoreEntity {
        +EntityId id
        +String name
        +DateTime createdAt
        +DateTime updatedAt
        +UserAction owner
    }
    
    class EntityHierarchy {
        +String treePath
        +List~EntityId~ childIds
        +List~EntityId~ ancestors
        +addChild(childId)
        +removeChild(childId)
    }
    
    class EntitySecurity {
        +List~String~ permissions
        +List~UserAction~ accessLog
        +bool isLocked
    }
    
    BaseEntityModel *-- CoreEntity
    BaseEntityModel *-- EntityHierarchy
    BaseEntityModel *-- EntitySecurity
"""

    # Add entity implementations
    entity_types = [name for name in entities.keys() if name.endswith('Entity')]
    if entity_types:
        domain_diagram += "\n    % Entity implementations\n"
        for entity_type in entity_types[:5]:  # Limit to 5 to avoid overcrowding
            domain_diagram += f"    BaseEntityModel <|-- {entity_type}\n"

    domain_diagram += "```\n\n"
    
    # Repository pattern diagram
    repo_diagram = """### Repository Pattern

```mermaid
classDiagram
    class IEntityRepository~T~ {
        <<interface>>
        +getById(id) Future~Entity~
        +create(entity) Future~Entity~
        +update(id, entity) Future~Entity~
        +delete(id) Future~bool~
        +query(params) Future~List~Entity~~
    }
    
    class EntityRepository~T~ {
        -IDataSource dataSource
        +getById(id) Future~Entity~
        +create(entity) Future~Entity~
        +update(id, entity) Future~Entity~
        +delete(id) Future~bool~
        +query(params) Future~List~Entity~~
    }
    
    class IDataSource {
        <<interface>>
        +read(id) Future~Map~
        +write(id, data) Future~bool~
        +delete(id) Future~bool~
        +query(params) Future~List~Map~~
    }
    
    IEntityRepository <|.. EntityRepository
    EntityRepository --> IDataSource
"""
    
    # Add specific repository implementations
    repo_impls = [name for name in repositories.keys() if 'Repository' in name]
    if repo_impls:
        repo_diagram += "\n    % Repository implementations\n"
        for repo in repo_impls[:3]:  # Limit to 3 to avoid overcrowding
            repo_diagram += f"    EntityRepository <|-- {repo}\n"
    
    repo_diagram += "```\n\n"
    
    # Event sourcing diagram
    event_diagram = """### Event Sourcing

```mermaid
classDiagram
    class DomainEventModel {
        +EventId id
        +EntityId entityId
        +String entityType
        +EventType type
        +DateTime timestamp
        +UserAction action
        +Map~String,dynamic~ changes
    }
    
    class IEventStore {
        <<interface>>
        +store(event) Future~bool~
        +getEvents(entityId) Future~List~DomainEvent~~
        +watchEvents(entityId) Stream~DomainEvent~
    }
    
    class EventAwareRepository~T~ {
        -IEntityRepository~T~ repository
        -IEventStore eventStore
        +update(id, entity) Future~Entity~
        +getHistory(id) Future~List~DomainEvent~~
    }
    
    EventAwareRepository --> IEntityRepository
    EventAwareRepository --> IEventStore
    EventAwareRepository ..> DomainEventModel
```
"""
    
    # Value objects diagram
    value_diagram = """### Value Objects

```mermaid
classDiagram
    class ValueObject {
        <<interface>>
        +bool isValid()
        +String toString()
    }
"""
    
    # Add value object implementations
    vo_types = list(value_objects.keys())
    if vo_types:
        for vo in vo_types[:6]:  # Limit to 6 to avoid overcrowding
            value_diagram += f"\n    class {vo} {{\n"
            
            # Add a few properties if available
            properties = value_objects[vo].get("properties", [])
            for i, prop in enumerate(properties[:3]):
                value_diagram += f"        +{prop['type']} {prop['name']}\n"
            
            if len(properties) > 3:
                value_diagram += "        ...\n"
                
            value_diagram += "    }\n"
            value_diagram += f"    ValueObject <|.. {vo}\n"
    
    value_diagram += "```\n"
    
    return domain_diagram + repo_diagram + event_diagram + value_diagram

def test_regex_patterns(file_path):
    """
    Test all regex patterns on a specific file and output detailed debug information.
    
    This function is used to debug regex patterns that might miss edge cases
    in complex Dart code. Run it on files that are known to cause issues.
    
    Args:
        file_path: Path to the Dart file to test regex patterns against
    """
    print(f"Testing regex patterns on {file_path}")
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    patterns = {
        "class_definition": r'(?:abstract |sealed )?class\s+(\w+)(?:<[^>]+>)?(?:\s+with\s+[^{]+)?(?:\s+implements\s+[^{]+)?(?:\s+extends\s+[^{]+)?\s*{(.*?)(?:^\})',
        "method_extraction": r'(?:\/\/\/\s*(.*?))?(?=\n\s*(?:@\w+\s+)*)(?:\s*@\w+\s+)*\s*(?:static\s+)?(?:final\s+)?(?:const\s+)?(?:\w+(?:<[^>]+>)?\s+)?(\w+)\s*\((.*?)\)(?:\s*=>\s*[^;]+|\s*\{)',
        "property_extraction": r'(?:\/\/\/\s*(.*?))?(?=\n\s*(?:@\w+\s+)*)(?:\s*@\w+\s+)*\s*(?:final\s+)?(?:static\s+)?(?:const\s+)?(\w+(?:<[^>]+>)?)\s+(\w+)(?:\s*=\s*[^;]+)?;',
        "interface_definition": r'abstract\s+class\s+(\w+)(?:<[^>]+>)?(?:\s+implements\s+[^{]+)?\s*{(.*?)(?:^\})',
        "typedef_definition": r'typedef\s+(\w+)(?:<[^>]+>)?\s*=\s*([^;]+);',
        "enum_definition": r'enum\s+(\w+)\s*{([^}]+)}'
    }
    
    for name, pattern in patterns.items():
        print(f"\nTesting pattern: {name}")
        try:
            compiled = re.compile(pattern, re.DOTALL | re.MULTILINE)
            matches = list(compiled.finditer(content))
            print(f"  Found {len(matches)} matches")
            
            for i, match in enumerate(matches[:3]):  # Show first 3 matches
                print(f"  Match {i+1}:")
                for j, group in enumerate(match.groups()):
                    # Truncate group output to prevent huge output
                    group_text = str(group)
                    if len(group_text) > 100:
                        group_text = group_text[:97] + "..."
                    print(f"    Group {j+1}: {group_text}")
                    
        except Exception as e:
            print(f"  Error testing {name}: {e}")
    
    # Additional test for overlapping matches, which is a common issue
    print("\nChecking for overlapping matches:")
    class_matches = re.finditer(patterns["class_definition"], content, re.DOTALL | re.MULTILINE)
    class_positions = [(m.start(), m.end(), m.group(1)) for m in class_matches]
    
    for i, (start1, end1, name1) in enumerate(class_positions):
        for j, (start2, end2, name2) in enumerate(class_positions):
            if i != j and start1 < end2 and start2 < end1:
                print(f"  Classes overlap: {name1} and {name2}")

if __name__ == "__main__":
    import sys
    if len(sys.argv) > 1 and sys.argv[1] == "--test-regex":
        if len(sys.argv) > 2:
            test_regex_patterns(sys.argv[2])
        else:
            print("Please provide a file path to test")
    else:
        project_path = os.path.expandvars("$HOME/projects/data_manager")
        create_codebase_snapshot(project_path)