# Data Manager Specification

## Overview

The Data Manager package provides a robust entity management system with advanced features for handling hierarchical data structures, version control, access tracking, and AI/LLM integration. This document outlines the key components and functionalities of the package.

## Key Components

### BaseEntity

A versatile base entity class that provides a foundation for domain objects with advanced features.

#### Features

- **Hierarchical Data Structures**: Supports materialized paths for efficient traversal.
- **Optimistic Locking**: Ensures data consistency during concurrent updates.
- **Access Tracking and History**: Tracks access and modifications with configurable depth.
- **Version Control and Schema Management**: Manages entity versions and schema changes.
- **Metadata Management**: Handles comprehensive metadata for entities.
- **Workflow States and Priorities**: Supports workflow stages and priority levels.
- **AI/LLM Integration**: Integrates AI-generated embeddings, metadata, and annotations.

#### Core Fields

- `entityId`: Unique identifier for the entity.
- `entityName`: Name of the entity.
- `entityDescription`: Optional description of the entity.
- `metaCreatedAt`: Timestamp of entity creation.
- `metaUpdatedAt`: Timestamp of the last update.
- `schemaVersion`: Version of the entity schema.
- `status`: Current status of the entity.
- `metaAttributes`: Additional metadata attributes.
- `hierarchyPath`: Materialized path for hierarchical data.
- `hierarchyDepth`: Depth level in the hierarchy.
- `relations`: Relationships with other entities.
- `subCollections`: Collection paths for nested data.
- `ancestorMetadata`: Denormalized ancestor data.
- `parentName`: Name of the parent entity.
- `searchablePath`: Pre-built search paths.
- `hierarchyLevel`: Level in the hierarchy.
- `owner`: User who owns the entity.
- `createdBy`: User who created the entity.
- `lastModifiedBy`: User who last modified the entity.
- `accessLastBy`: User who last accessed the entity.
- `lockedBy`: User who locked the entity.
- `lockExpiresAt`: Expiration time of the lock.
- `modificationHistory`: History of modifications.
- `accessHistory`: History of accesses.
- `accessIsPublic`: Indicates if the entity is public.
- `accessCount`: Number of times the entity was accessed.
- `tags`: Tags associated with the entity.
- `labels`: Labels associated with the entity.
- `priority`: Priority level of the entity.
- `workflowStage`: Current workflow stage.
- `expiresAt`: Expiration time of the entity.
- `syncMetadata`: Metadata for synchronization.
- `lastSyncedVersion`: Last synced version.
- `queryIndex`: Custom indexes for queries.
- `additionalData`: Type-safe additional data.
- `eventVersion`: Version of the event.
- `eventPending`: List of pending events.
- `eventMetadata`: Metadata for events.
- `historyLimit`: Limit for history size.
- `entityVersion`: Version of the entity data.
- `structureVersion`: Version of the entity structure.
- `lastKnownVersion`: Last known version for CAS operations.
- `distributedLockId`: ID of the distributed lock.
- `distributedLockExpiry`: Expiry time of the distributed lock.
- `distributedLockNode`: Node of the distributed lock.
- `lockMetadata`: Metadata for the lock.
- `versionVectors`: Version vectors for conflict resolution.
- `lockTimeout`: Timeout duration for locks.
- `aiEmbeddings`: AI-generated embeddings.
- `aiScores`: AI-generated scores.
- `aiMetadata`: AI-generated metadata.
- `aiTags`: AI-generated tags.
- `aiAnnotations`: AI-generated annotations.
- `lastAiProcessingTime`: Last AI processing time.
- `aiProcessingVersion`: Version of the AI processing.

### Entity Types

Defines specific entity classes such as `Owner`, `Site`, `Equipment`, `Vendor`, and `Personnel`.

#### Features

- **Validation Methods**: Ensures data integrity and consistency.
- **Event Handling**: Supports domain events for entity updates.
- **Computed Properties**: Provides useful computed properties for entities.
- **Path Validation**: Validates paths for hierarchical data.
- **Business Helpers**: Adds business-specific helper methods.

### Entity Factory

Provides methods for creating and cloning entities with comprehensive parameter support.

#### Features

- **Entity Creation**: Creates new entities with specified parameters.
- **Entity Cloning**: Clones existing entities with optional modifications.
- **Path Handling**: Validates and builds entity paths.
- **Ancestor Metadata**: Converts ancestor names to metadata.
- **Relations Handling**: Converts relations to entity IDs.
- **Sync Metadata**: Builds initial synchronization metadata.
- **Event Metadata**: Builds initial event metadata.

### Extensions

#### Lock Management

Handles entity locking mechanisms to ensure data consistency.

#### Tracking Management

Tracks access and modifications to entities.

#### Entity Utilities

Provides general utility operations for entities.

#### Hierarchy Management

Manages hierarchical relationships and materialized paths.

#### Path Management

Handles path normalization and validation.

#### Materialized Path Management

Manages materialized paths for hierarchical data.

#### Concurrency Control

Ensures data consistency during concurrent updates with conflict detection and resolution.

#### Event Management

Supports event sourcing and replay functionality.

#### Graph Traversal

Provides methods for traversing entity relationships.

#### AI Integration

Integrates AI-generated embeddings, metadata, and annotations.

#### RAG Capabilities

Supports Retrieval Augmented Generation (RAG) for AI models.

#### Language Model Integration

Tracks interactions with language models and manages AI processing history.

## Constants

### EntityConstants

Defines constants for status, workflow, access control, history limits, and lock durations.

### PathConstants

Defines constants for path management, including separators, invalid characters, and length limits.

## Type Aliases

- `VersionVector`: Map of version vectors.
- `LockMetadata`: Map of lock metadata.
- `EventMetadata`: Map of event metadata.
- `QueryIndex`: Map of query indexes.

## Helper Classes

### EntityMetadata

Stores metadata for entities, including display name, type, description, and search terms.

## Exception Classes

### PathValidationException

Thrown when a path validation error occurs.

## Usage

### Creating an Entity

```dart
final params = EntityCreateParams<Owner>(
  name: 'New Owner',
  currentUser: authUser,
  owner: userAction,
  additionalData: ownerData,
);
final ownerEntity = EntityFactory.createEntity(params);