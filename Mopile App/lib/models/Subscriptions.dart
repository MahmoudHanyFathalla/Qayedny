/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Subscriptions type in your schema. */
class Subscriptions extends amplify_core.Model {
  static const classType = const _SubscriptionsModelType();
  final String id;
  final ESubscriptionDuration? _Duration;
  final String? _Value;
  final ESubscriptionType? _Type;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SubscriptionsModelIdentifier get modelIdentifier {
      return SubscriptionsModelIdentifier(
        id: id
      );
  }
  
  ESubscriptionDuration get Duration {
    try {
      return _Duration!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get Value {
    try {
      return _Value!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  ESubscriptionType get Type {
    try {
      return _Type!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Subscriptions._internal({required this.id, required Duration, required Value, required Type, createdAt, updatedAt}): _Duration = Duration, _Value = Value, _Type = Type, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Subscriptions({String? id, required ESubscriptionDuration Duration, required String Value, required ESubscriptionType Type}) {
    return Subscriptions._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      Duration: Duration,
      Value: Value,
      Type: Type);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Subscriptions &&
      id == other.id &&
      _Duration == other._Duration &&
      _Value == other._Value &&
      _Type == other._Type;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Subscriptions {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Duration=" + (_Duration != null ? amplify_core.enumToString(_Duration)! : "null") + ", ");
    buffer.write("Value=" + "$_Value" + ", ");
    buffer.write("Type=" + (_Type != null ? amplify_core.enumToString(_Type)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Subscriptions copyWith({ESubscriptionDuration? Duration, String? Value, ESubscriptionType? Type}) {
    return Subscriptions._internal(
      id: id,
      Duration: Duration ?? this.Duration,
      Value: Value ?? this.Value,
      Type: Type ?? this.Type);
  }
  
  Subscriptions copyWithModelFieldValues({
    ModelFieldValue<ESubscriptionDuration>? Duration,
    ModelFieldValue<String>? Value,
    ModelFieldValue<ESubscriptionType>? Type
  }) {
    return Subscriptions._internal(
      id: id,
      Duration: Duration == null ? this.Duration : Duration.value,
      Value: Value == null ? this.Value : Value.value,
      Type: Type == null ? this.Type : Type.value
    );
  }
  
  Subscriptions.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Duration = amplify_core.enumFromString<ESubscriptionDuration>(json['Duration'], ESubscriptionDuration.values),
      _Value = json['Value'],
      _Type = amplify_core.enumFromString<ESubscriptionType>(json['Type'], ESubscriptionType.values),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Duration': amplify_core.enumToString(_Duration), 'Value': _Value, 'Type': amplify_core.enumToString(_Type), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'Duration': _Duration,
    'Value': _Value,
    'Type': _Type,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<SubscriptionsModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<SubscriptionsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final DURATION = amplify_core.QueryField(fieldName: "Duration");
  static final VALUE = amplify_core.QueryField(fieldName: "Value");
  static final TYPE = amplify_core.QueryField(fieldName: "Type");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Subscriptions";
    modelSchemaDefinition.pluralName = "Subscriptions";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Subscriptions.DURATION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Subscriptions.VALUE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Subscriptions.TYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _SubscriptionsModelType extends amplify_core.ModelType<Subscriptions> {
  const _SubscriptionsModelType();
  
  @override
  Subscriptions fromJson(Map<String, dynamic> jsonData) {
    return Subscriptions.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Subscriptions';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Subscriptions] in your schema.
 */
class SubscriptionsModelIdentifier implements amplify_core.ModelIdentifier<Subscriptions> {
  final String id;

  /** Create an instance of SubscriptionsModelIdentifier using [id] the primary key. */
  const SubscriptionsModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'SubscriptionsModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SubscriptionsModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}