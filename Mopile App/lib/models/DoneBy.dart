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

import 'package:qayedny/features/authentication/data/models/User.dart';

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the DoneBy type in your schema. */
class DoneBy extends amplify_core.Model {
  static const classType = const _DoneByModelType();
  final String id;
  final User? _RDoneByUser;
  final List<Project>? _RProjectDone;
  final List<Service>? _RServiceDone;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _doneByRDoneByUserId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  DoneByModelIdentifier get modelIdentifier {
      return DoneByModelIdentifier(
        id: id
      );
  }
  
  User? get RDoneByUser {
    return _RDoneByUser;
  }
  
  List<Project>? get RProjectDone {
    return _RProjectDone;
  }
  
  List<Service>? get RServiceDone {
    return _RServiceDone;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get doneByRDoneByUserId {
    return _doneByRDoneByUserId;
  }
  
  const DoneBy._internal({required this.id, RDoneByUser, RProjectDone, RServiceDone, createdAt, updatedAt, doneByRDoneByUserId}): _RDoneByUser = RDoneByUser, _RProjectDone = RProjectDone, _RServiceDone = RServiceDone, _createdAt = createdAt, _updatedAt = updatedAt, _doneByRDoneByUserId = doneByRDoneByUserId;
  
  factory DoneBy({String? id, User? RDoneByUser, List<Project>? RProjectDone, List<Service>? RServiceDone, String? doneByRDoneByUserId}) {
    return DoneBy._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      RDoneByUser: RDoneByUser,
      RProjectDone: RProjectDone != null ? List<Project>.unmodifiable(RProjectDone) : RProjectDone,
      RServiceDone: RServiceDone != null ? List<Service>.unmodifiable(RServiceDone) : RServiceDone,
      doneByRDoneByUserId: doneByRDoneByUserId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DoneBy &&
      id == other.id &&
      _RDoneByUser == other._RDoneByUser &&
      DeepCollectionEquality().equals(_RProjectDone, other._RProjectDone) &&
      DeepCollectionEquality().equals(_RServiceDone, other._RServiceDone) &&
      _doneByRDoneByUserId == other._doneByRDoneByUserId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DoneBy {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("doneByRDoneByUserId=" + "$_doneByRDoneByUserId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DoneBy copyWith({User? RDoneByUser, List<Project>? RProjectDone, List<Service>? RServiceDone, String? doneByRDoneByUserId}) {
    return DoneBy._internal(
      id: id,
      RDoneByUser: RDoneByUser ?? this.RDoneByUser,
      RProjectDone: RProjectDone ?? this.RProjectDone,
      RServiceDone: RServiceDone ?? this.RServiceDone,
      doneByRDoneByUserId: doneByRDoneByUserId ?? this.doneByRDoneByUserId);
  }
  
  DoneBy copyWithModelFieldValues({
    ModelFieldValue<User?>? RDoneByUser,
    ModelFieldValue<List<Project>?>? RProjectDone,
    ModelFieldValue<List<Service>?>? RServiceDone,
    ModelFieldValue<String?>? doneByRDoneByUserId
  }) {
    return DoneBy._internal(
      id: id,
      RDoneByUser: RDoneByUser == null ? this.RDoneByUser : RDoneByUser.value,
      RProjectDone: RProjectDone == null ? this.RProjectDone : RProjectDone.value,
      RServiceDone: RServiceDone == null ? this.RServiceDone : RServiceDone.value,
      doneByRDoneByUserId: doneByRDoneByUserId == null ? this.doneByRDoneByUserId : doneByRDoneByUserId.value
    );
  }
  
  DoneBy.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _RDoneByUser = json['RDoneByUser']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['RDoneByUser']['serializedData']))
        : null,
      _RProjectDone = json['RProjectDone'] is List
        ? (json['RProjectDone'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Project.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _RServiceDone = json['RServiceDone'] is List
        ? (json['RServiceDone'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Service.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _doneByRDoneByUserId = json['doneByRDoneByUserId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'RDoneByUser': _RDoneByUser?.toJson(), 'RProjectDone': _RProjectDone?.map((Project? e) => e?.toJson()).toList(), 'RServiceDone': _RServiceDone?.map((Service? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'doneByRDoneByUserId': _doneByRDoneByUserId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'RDoneByUser': _RDoneByUser,
    'RProjectDone': _RProjectDone,
    'RServiceDone': _RServiceDone,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'doneByRDoneByUserId': _doneByRDoneByUserId
  };

  static final amplify_core.QueryModelIdentifier<DoneByModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<DoneByModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final RDONEBYUSER = amplify_core.QueryField(
    fieldName: "RDoneByUser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final RPROJECTDONE = amplify_core.QueryField(
    fieldName: "RProjectDone",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Project'));
  static final RSERVICEDONE = amplify_core.QueryField(
    fieldName: "RServiceDone",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Service'));
  static final DONEBYRDONEBYUSERID = amplify_core.QueryField(fieldName: "doneByRDoneByUserId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DoneBy";
    modelSchemaDefinition.pluralName = "DoneBies";
    
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: DoneBy.RDONEBYUSER,
      isRequired: false,
      ofModelName: 'User',
      associatedKey: User.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: DoneBy.RPROJECTDONE,
      isRequired: false,
      ofModelName: 'Project',
      associatedKey: Project.RDONEBY
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: DoneBy.RSERVICEDONE,
      isRequired: false,
      ofModelName: 'Service',
      associatedKey: Service.RDONEBY
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: DoneBy.DONEBYRDONEBYUSERID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _DoneByModelType extends amplify_core.ModelType<DoneBy> {
  const _DoneByModelType();
  
  @override
  DoneBy fromJson(Map<String, dynamic> jsonData) {
    return DoneBy.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'DoneBy';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [DoneBy] in your schema.
 */
class DoneByModelIdentifier implements amplify_core.ModelIdentifier<DoneBy> {
  final String id;

  /** Create an instance of DoneByModelIdentifier using [id] the primary key. */
  const DoneByModelIdentifier({
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
  String toString() => 'DoneByModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is DoneByModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}