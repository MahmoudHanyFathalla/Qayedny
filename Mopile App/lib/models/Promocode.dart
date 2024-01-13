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


/** This is an auto generated class representing the Promocode type in your schema. */
class Promocode extends amplify_core.Model {
  static const classType = const _PromocodeModelType();
  final String id;
  final String? _Code;
  final String? _Title;
  final int? _TPs;
  final bool? _Active;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PromocodeModelIdentifier get modelIdentifier {
      return PromocodeModelIdentifier(
        id: id
      );
  }
  
  String get Code {
    try {
      return _Code!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get Title {
    return _Title;
  }
  
  int get TPs {
    try {
      return _TPs!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get Active {
    try {
      return _Active!;
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
  
  const Promocode._internal({required this.id, required Code, Title, required TPs, required Active, createdAt, updatedAt}): _Code = Code, _Title = Title, _TPs = TPs, _Active = Active, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Promocode({String? id, required String Code, String? Title, required int TPs, required bool Active}) {
    return Promocode._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      Code: Code,
      Title: Title,
      TPs: TPs,
      Active: Active);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Promocode &&
      id == other.id &&
      _Code == other._Code &&
      _Title == other._Title &&
      _TPs == other._TPs &&
      _Active == other._Active;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Promocode {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Code=" + "$_Code" + ", ");
    buffer.write("Title=" + "$_Title" + ", ");
    buffer.write("TPs=" + (_TPs != null ? _TPs!.toString() : "null") + ", ");
    buffer.write("Active=" + (_Active != null ? _Active!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Promocode copyWith({String? Code, String? Title, int? TPs, bool? Active}) {
    return Promocode._internal(
      id: id,
      Code: Code ?? this.Code,
      Title: Title ?? this.Title,
      TPs: TPs ?? this.TPs,
      Active: Active ?? this.Active);
  }
  
  Promocode copyWithModelFieldValues({
    ModelFieldValue<String>? Code,
    ModelFieldValue<String?>? Title,
    ModelFieldValue<int>? TPs,
    ModelFieldValue<bool>? Active
  }) {
    return Promocode._internal(
      id: id,
      Code: Code == null ? this.Code : Code.value,
      Title: Title == null ? this.Title : Title.value,
      TPs: TPs == null ? this.TPs : TPs.value,
      Active: Active == null ? this.Active : Active.value
    );
  }
  
  Promocode.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Code = json['Code'],
      _Title = json['Title'],
      _TPs = (json['TPs'] as num?)?.toInt(),
      _Active = json['Active'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Code': _Code, 'Title': _Title, 'TPs': _TPs, 'Active': _Active, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'Code': _Code,
    'Title': _Title,
    'TPs': _TPs,
    'Active': _Active,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PromocodeModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PromocodeModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CODE = amplify_core.QueryField(fieldName: "Code");
  static final TITLE = amplify_core.QueryField(fieldName: "Title");
  static final TPS = amplify_core.QueryField(fieldName: "TPs");
  static final ACTIVE = amplify_core.QueryField(fieldName: "Active");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Promocode";
    modelSchemaDefinition.pluralName = "Promocodes";
    
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
      key: Promocode.CODE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Promocode.TITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Promocode.TPS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Promocode.ACTIVE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
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

class _PromocodeModelType extends amplify_core.ModelType<Promocode> {
  const _PromocodeModelType();
  
  @override
  Promocode fromJson(Map<String, dynamic> jsonData) {
    return Promocode.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Promocode';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Promocode] in your schema.
 */
class PromocodeModelIdentifier implements amplify_core.ModelIdentifier<Promocode> {
  final String id;

  /** Create an instance of PromocodeModelIdentifier using [id] the primary key. */
  const PromocodeModelIdentifier({
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
  String toString() => 'PromocodeModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PromocodeModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}