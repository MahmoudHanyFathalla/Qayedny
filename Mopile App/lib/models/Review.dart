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


/** This is an auto generated class representing the Review type in your schema. */
class Review extends amplify_core.Model {
  static const classType = const _ReviewModelType();
  final String id;
  final User? _RUser;
  final String? _Title;
  final String? _Description;
  final int? _Rate;
  final String? _serviceID;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ReviewModelIdentifier get modelIdentifier {
      return ReviewModelIdentifier(
        id: id
      );
  }
  
  User? get RUser {
    return _RUser;
  }
  
  String? get Title {
    return _Title;
  }
  
  String? get Description {
    return _Description;
  }
  
  int? get Rate {
    return _Rate;
  }
  
  String get serviceID {
    try {
      return _serviceID!;
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
  
  const Review._internal({required this.id, RUser, Title, Description, Rate, required serviceID, createdAt, updatedAt}): _RUser = RUser, _Title = Title, _Description = Description, _Rate = Rate, _serviceID = serviceID, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Review({String? id, User? RUser, String? Title, String? Description, int? Rate, required String serviceID}) {
    return Review._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      RUser: RUser,
      Title: Title,
      Description: Description,
      Rate: Rate,
      serviceID: serviceID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
      id == other.id &&
      _RUser == other._RUser &&
      _Title == other._Title &&
      _Description == other._Description &&
      _Rate == other._Rate &&
      _serviceID == other._serviceID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Review {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("RUser=" + (_RUser != null ? _RUser!.toString() : "null") + ", ");
    buffer.write("Title=" + "$_Title" + ", ");
    buffer.write("Description=" + "$_Description" + ", ");
    buffer.write("Rate=" + (_Rate != null ? _Rate!.toString() : "null") + ", ");
    buffer.write("serviceID=" + "$_serviceID" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Review copyWith({User? RUser, String? Title, String? Description, int? Rate, String? serviceID}) {
    return Review._internal(
      id: id,
      RUser: RUser ?? this.RUser,
      Title: Title ?? this.Title,
      Description: Description ?? this.Description,
      Rate: Rate ?? this.Rate,
      serviceID: serviceID ?? this.serviceID);
  }
  
  Review copyWithModelFieldValues({
    ModelFieldValue<User?>? RUser,
    ModelFieldValue<String?>? Title,
    ModelFieldValue<String?>? Description,
    ModelFieldValue<int?>? Rate,
    ModelFieldValue<String>? serviceID
  }) {
    return Review._internal(
      id: id,
      RUser: RUser == null ? this.RUser : RUser.value,
      Title: Title == null ? this.Title : Title.value,
      Description: Description == null ? this.Description : Description.value,
      Rate: Rate == null ? this.Rate : Rate.value,
      serviceID: serviceID == null ? this.serviceID : serviceID.value
    );
  }
  
  Review.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _RUser = json['RUser']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['RUser']['serializedData']))
        : null,
      _Title = json['Title'],
      _Description = json['Description'],
      _Rate = (json['Rate'] as num?)?.toInt(),
      _serviceID = json['serviceID'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'RUser': _RUser?.toJson(), 'Title': _Title, 'Description': _Description, 'Rate': _Rate, 'serviceID': _serviceID, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'RUser': _RUser,
    'Title': _Title,
    'Description': _Description,
    'Rate': _Rate,
    'serviceID': _serviceID,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ReviewModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ReviewModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final RUSER = amplify_core.QueryField(
    fieldName: "RUser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final TITLE = amplify_core.QueryField(fieldName: "Title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "Description");
  static final RATE = amplify_core.QueryField(fieldName: "Rate");
  static final SERVICEID = amplify_core.QueryField(fieldName: "serviceID");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Review";
    modelSchemaDefinition.pluralName = "Reviews";
    
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
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["userID"], name: "byUser"),
      amplify_core.ModelIndex(fields: const ["serviceID"], name: "byService")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Review.RUSER,
      isRequired: false,
      targetNames: ['userID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Review.TITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Review.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Review.RATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Review.SERVICEID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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

class _ReviewModelType extends amplify_core.ModelType<Review> {
  const _ReviewModelType();
  
  @override
  Review fromJson(Map<String, dynamic> jsonData) {
    return Review.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Review';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Review] in your schema.
 */
class ReviewModelIdentifier implements amplify_core.ModelIdentifier<Review> {
  final String id;

  /** Create an instance of ReviewModelIdentifier using [id] the primary key. */
  const ReviewModelIdentifier({
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
  String toString() => 'ReviewModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ReviewModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}