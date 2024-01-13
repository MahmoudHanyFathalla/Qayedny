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

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:qayedny/models/ModelProvider.dart';


/** This is an auto generated class representing the UserInfo type in your schema. */
class UserInfo extends amplify_core.Model {
  static const classType = const _UserInfoModelType();
  final String id;
  final String? _Name;
  final String? _Email;
  final String? _Password;
  final String? _Mobile;
  final amplify_core.TemporalDate? _Dateofbirth;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UserInfoModelIdentifier get modelIdentifier {
      return UserInfoModelIdentifier(
        id: id
      );
  }
  
  String get Name {
    try {
      return _Name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get Email {
    try {
      return _Email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get Password {
    try {
      return _Password!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get Mobile {
    try {
      return _Mobile!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDate? get Dateofbirth {
    return _Dateofbirth;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const UserInfo._internal({required this.id, required Name, required Email, required Password, required Mobile, Dateofbirth, createdAt, updatedAt}): _Name = Name, _Email = Email, _Password = Password, _Mobile = Mobile, _Dateofbirth = Dateofbirth, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory UserInfo({String? id, required String Name, required String Email, required String Password, required String Mobile, amplify_core.TemporalDate? Dateofbirth}) {
    return UserInfo._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      Name: Name,
      Email: Email,
      Password: Password,
      Mobile: Mobile,
      Dateofbirth: Dateofbirth);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfo &&
      id == other.id &&
      _Name == other._Name &&
      _Email == other._Email &&
      _Password == other._Password &&
      _Mobile == other._Mobile &&
      _Dateofbirth == other._Dateofbirth;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UserInfo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Name=" + "$_Name" + ", ");
    buffer.write("Email=" + "$_Email" + ", ");
    buffer.write("Password=" + "$_Password" + ", ");
    buffer.write("Mobile=" + "$_Mobile" + ", ");
    buffer.write("Dateofbirth=" + (_Dateofbirth != null ? _Dateofbirth!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UserInfo copyWith({String? Name, String? Email, String? Password, String? Mobile, amplify_core.TemporalDate? Dateofbirth}) {
    return UserInfo._internal(
      id: id,
      Name: Name ?? this.Name,
      Email: Email ?? this.Email,
      Password: Password ?? this.Password,
      Mobile: Mobile ?? this.Mobile,
      Dateofbirth: Dateofbirth ?? this.Dateofbirth);
  }
  
  UserInfo copyWithModelFieldValues({
    ModelFieldValue<String>? Name,
    ModelFieldValue<String>? Email,
    ModelFieldValue<String>? Password,
    ModelFieldValue<String>? Mobile,
    ModelFieldValue<amplify_core.TemporalDate?>? Dateofbirth
  }) {
    return UserInfo._internal(
      id: id,
      Name: Name == null ? this.Name : Name.value,
      Email: Email == null ? this.Email : Email.value,
      Password: Password == null ? this.Password : Password.value,
      Mobile: Mobile == null ? this.Mobile : Mobile.value,
      Dateofbirth: Dateofbirth == null ? this.Dateofbirth : Dateofbirth.value
    );
  }
  
  UserInfo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Name = json['Name'],
      _Email = json['Email'],
      _Password = json['Password'],
      _Mobile = json['Mobile'],
      _Dateofbirth = json['Dateofbirth'] != null ? amplify_core.TemporalDate.fromString(json['Dateofbirth']) : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Name': _Name, 'Email': _Email, 'Password': _Password, 'Mobile': _Mobile, 'Dateofbirth': _Dateofbirth?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'Name': _Name,
    'Email': _Email,
    'Password': _Password,
    'Mobile': _Mobile,
    'Dateofbirth': _Dateofbirth,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<UserInfoModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserInfoModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "Name");
  static final EMAIL = amplify_core.QueryField(fieldName: "Email");
  static final PASSWORD = amplify_core.QueryField(fieldName: "Password");
  static final MOBILE = amplify_core.QueryField(fieldName: "Mobile");
  static final DATEOFBIRTH = amplify_core.QueryField(fieldName: "Dateofbirth");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UserInfo";
    modelSchemaDefinition.pluralName = "UserInfos";
    
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
      key: UserInfo.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserInfo.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserInfo.PASSWORD,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserInfo.MOBILE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: UserInfo.DATEOFBIRTH,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
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

class _UserInfoModelType extends amplify_core.ModelType<UserInfo> {
  const _UserInfoModelType();
  
  @override
  UserInfo fromJson(Map<String, dynamic> jsonData) {
    return UserInfo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'UserInfo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [UserInfo] in your schema.
 */
class UserInfoModelIdentifier implements amplify_core.ModelIdentifier<UserInfo> {
  final String id;

  /** Create an instance of UserInfoModelIdentifier using [id] the primary key. */
  const UserInfoModelIdentifier({
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
  String toString() => 'UserInfoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserInfoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}