import 'package:authentication/authentication.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_action.freezed.dart';
part 'user_action.g.dart';

/// Represents a user action or event within the system
@freezed
sealed class UserAction with _$UserAction {
  const factory UserAction({
    /// Core User Information
    required String uid,
    @Default('') String displayName,

    /// Action Metadata
    required DateTime timestamp,
    @Default('') String actionType,
    @Default('') String description,

    /// Context Information
    @Default('') String entityId,
    @Default('') String entityType,
    @Default('') String workflowStage,
    @Default('') String status,
    @Default(false) bool isAuthenticated,

    /// Action Details
    @Default({}) Map<String, Object> changes,
    @Default({}) Map<String, Object> metadata,
    @Default([]) List<String> affectedFields,

    /// Validation & Security
    @Default(false) bool isAuthorized,
    @Default([]) List<String> permissions,
    @Default('') String authenticationMethod,

    /// Audit Trail
    @Default('') String previousValue,
    @Default('') String newValue,
    @Default('') String reason,
    @Default(false) bool isSuccessful,
    @Default('') String errorMessage,

    /// Related Actions
    @Default('') String parentActionId,
    @Default([]) List<String> relatedActionIds,

    /// Event Tracking
    @Default('') String eventId,
    @Default('') String eventType,
    @Default('') String correlationId,
    @Default('') String causationId,
    @Default([]) List<String> eventTags,
    @Default({}) Map<String, Object> eventMetadata,
  }) = _UserAction;

  factory UserAction.fromJson(Map<String, Object> json) =>
      _$UserActionFromJson(json);

  /// Creates a user action from auth user
  factory UserAction.fromAuthUser(AuthUser user) {
    return UserAction(
      uid: user.uid,
      displayName: user.displayName ?? '',
      timestamp: DateTime.now(),
      isAuthenticated: true,
    );
  }

  /// Creates an anonymous user action
  factory UserAction.anonymous() {
    return UserAction(
      uid: 'anonymous',
      timestamp: DateTime.now(),
      isAuthenticated: false,
    );
  }

  /// Creates a system action
  factory UserAction.system({
    required String actionType,
    required String description,
  }) {
    return UserAction(
      uid: 'system',
      timestamp: DateTime.now(),
      actionType: actionType,
      description: description,
      isAuthenticated: true,
      isAuthorized: true,
    );
  }
}

/// Extension methods for UserAction
extension UserActionX on UserAction {
  /// Checks if the action is a system action
  bool get isSystemAction => uid == 'system';

  /// Checks if the action is an anonymous action
  bool get isAnonymousAction => uid == 'anonymous';

  /// Gets the action age
  Duration get age => DateTime.now().difference(timestamp);

  /// Checks if the action is recent (within last hour)
  bool get isRecent => age.inHours < 1;

  /// Creates a copy with audit trail information
  UserAction withAuditInfo({
    required String previousValue,
    required String newValue,
    required String reason,
  }) {
    return copyWith(
      previousValue: previousValue,
      newValue: newValue,
      reason: reason,
    );
  }

  /// Creates a copy with error information
  UserAction withError(String error) {
    return copyWith(
      isSuccessful: false,
      errorMessage: error,
    );
  }

  /// Creates a copy with success status
  UserAction withSuccess() {
    return copyWith(
      isSuccessful: true,
      errorMessage: '',
    );
  }

  /// Creates a new action with event information
  UserAction withEventInfo({
    required String eventId,
    required String eventType,
    String? correlationId,
    String? causationId,
    List<String>? eventTags,
    Map<String, Object>? eventMetadata,
  }) {
    return copyWith(
      eventId: eventId,
      eventType: eventType,
      correlationId: correlationId ?? this.correlationId,
      causationId: causationId ?? this.causationId,
      eventTags: eventTags ?? this.eventTags,
      eventMetadata: eventMetadata ?? this.eventMetadata,
    );
  }
}
