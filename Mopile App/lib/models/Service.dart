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


/** This is an auto generated class representing the Service type in your schema. */
class Service extends amplify_core.Model {
  static const classType = const _ServiceModelType();
  final String id;
  final String? _Title;
  final String? _Description;
  final ECategory? _Category;
  final int? _Price;
  final bool? _Active;
  final EServiceStatus? _Status;
  final String? _Imgae;
  final User? _RUser;
  final List<Review>? _RReviews;
  final DoneBy? _RDoneBy;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ServiceModelIdentifier get modelIdentifier {
      return ServiceModelIdentifier(
        id: id
      );
  }
  
  String? get Title {
    return _Title;
  }
  
  String? get Description {
    return _Description;
  }
  
  ECategory? get Category {
    return _Category;
  }
  
  int? get Price {
    return _Price;
  }
  
  bool? get Active {
    return _Active;
  }
  
  EServiceStatus? get Status {
    return _Status;
  }
  
  String? get Imgae {
    return _Imgae;
  }
  
  User? get RUser {
    return _RUser;
  }
  
  List<Review>? get RReviews {
    return _RReviews;
  }
  
  DoneBy? get RDoneBy {
    return _RDoneBy;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Service._internal({required this.id, Title, Description, Category, Price, Active, Status, Imgae, RUser, RReviews, RDoneBy, createdAt, updatedAt}): _Title = Title, _Description = Description, _Category = Category, _Price = Price, _Active = Active, _Status = Status, _Imgae = Imgae, _RUser = RUser, _RReviews = RReviews, _RDoneBy = RDoneBy, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Service({String? id, String? Title, String? Description, ECategory? Category, int? Price, bool? Active, EServiceStatus? Status, String? Imgae, User? RUser, List<Review>? RReviews, DoneBy? RDoneBy}) {
    return Service._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      Title: Title,
      Description: Description,
      Category: Category,
      Price: Price,
      Active: Active,
      Status: Status,
      Imgae: Imgae,
      RUser: RUser,
      RReviews: RReviews != null ? List<Review>.unmodifiable(RReviews) : RReviews,
      RDoneBy: RDoneBy);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Service &&
      id == other.id &&
      _Title == other._Title &&
      _Description == other._Description &&
      _Category == other._Category &&
      _Price == other._Price &&
      _Active == other._Active &&
      _Status == other._Status &&
      _Imgae == other._Imgae &&
      _RUser == other._RUser &&
      DeepCollectionEquality().equals(_RReviews, other._RReviews) &&
      _RDoneBy == other._RDoneBy;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Service {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Title=" + "$_Title" + ", ");
    buffer.write("Description=" + "$_Description" + ", ");
    buffer.write("Category=" + (_Category != null ? amplify_core.enumToString(_Category)! : "null") + ", ");
    buffer.write("Price=" + (_Price != null ? _Price!.toString() : "null") + ", ");
    buffer.write("Active=" + (_Active != null ? _Active!.toString() : "null") + ", ");
    buffer.write("Status=" + (_Status != null ? amplify_core.enumToString(_Status)! : "null") + ", ");
    buffer.write("Imgae=" + "$_Imgae" + ", ");
    buffer.write("RUser=" + (_RUser != null ? _RUser!.toString() : "null") + ", ");
    buffer.write("RDoneBy=" + (_RDoneBy != null ? _RDoneBy!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Service copyWith({String? Title, String? Description, ECategory? Category, int? Price, bool? Active, EServiceStatus? Status, String? Imgae, User? RUser, List<Review>? RReviews, DoneBy? RDoneBy}) {
    return Service._internal(
      id: id,
      Title: Title ?? this.Title,
      Description: Description ?? this.Description,
      Category: Category ?? this.Category,
      Price: Price ?? this.Price,
      Active: Active ?? this.Active,
      Status: Status ?? this.Status,
      Imgae: Imgae ?? this.Imgae,
      RUser: RUser ?? this.RUser,
      RReviews: RReviews ?? this.RReviews,
      RDoneBy: RDoneBy ?? this.RDoneBy);
  }
  
  Service copyWithModelFieldValues({
    ModelFieldValue<String?>? Title,
    ModelFieldValue<String?>? Description,
    ModelFieldValue<ECategory?>? Category,
    ModelFieldValue<int?>? Price,
    ModelFieldValue<bool?>? Active,
    ModelFieldValue<EServiceStatus?>? Status,
    ModelFieldValue<String?>? Imgae,
    ModelFieldValue<User?>? RUser,
    ModelFieldValue<List<Review>?>? RReviews,
    ModelFieldValue<DoneBy?>? RDoneBy
  }) {
    return Service._internal(
      id: id,
      Title: Title == null ? this.Title : Title.value,
      Description: Description == null ? this.Description : Description.value,
      Category: Category == null ? this.Category : Category.value,
      Price: Price == null ? this.Price : Price.value,
      Active: Active == null ? this.Active : Active.value,
      Status: Status == null ? this.Status : Status.value,
      Imgae: Imgae == null ? this.Imgae : Imgae.value,
      RUser: RUser == null ? this.RUser : RUser.value,
      RReviews: RReviews == null ? this.RReviews : RReviews.value,
      RDoneBy: RDoneBy == null ? this.RDoneBy : RDoneBy.value
    );
  }
  
  Service.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Title = json['Title'],
      _Description = json['Description'],
      _Category = amplify_core.enumFromString<ECategory>(json['Category'], ECategory.values),
      _Price = (json['Price'] as num?)?.toInt(),
      _Active = json['Active'],
      _Status = amplify_core.enumFromString<EServiceStatus>(json['Status'], EServiceStatus.values),
      _Imgae = json['Imgae'],
      _RUser = json['RUser']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['RUser']['serializedData']))
        : null,
      _RReviews = json['RReviews'] is List
        ? (json['RReviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _RDoneBy = json['RDoneBy']?['serializedData'] != null
        ? DoneBy.fromJson(new Map<String, dynamic>.from(json['RDoneBy']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Title': _Title, 'Description': _Description, 'Category': amplify_core.enumToString(_Category), 'Price': _Price, 'Active': _Active, 'Status': amplify_core.enumToString(_Status), 'Imgae': _Imgae, 'RUser': _RUser?.toJson(), 'RReviews': _RReviews?.map((Review? e) => e?.toJson()).toList(), 'RDoneBy': _RDoneBy?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'Title': _Title,
    'Description': _Description,
    'Category': _Category,
    'Price': _Price,
    'Active': _Active,
    'Status': _Status,
    'Imgae': _Imgae,
    'RUser': _RUser,
    'RReviews': _RReviews,
    'RDoneBy': _RDoneBy,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ServiceModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ServiceModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "Title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "Description");
  static final CATEGORY = amplify_core.QueryField(fieldName: "Category");
  static final PRICE = amplify_core.QueryField(fieldName: "Price");
  static final ACTIVE = amplify_core.QueryField(fieldName: "Active");
  static final STATUS = amplify_core.QueryField(fieldName: "Status");
  static final IMGAE = amplify_core.QueryField(fieldName: "Imgae");
  static final RUSER = amplify_core.QueryField(
    fieldName: "RUser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final RREVIEWS = amplify_core.QueryField(
    fieldName: "RReviews",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final RDONEBY = amplify_core.QueryField(
    fieldName: "RDoneBy",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'DoneBy'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Service";
    modelSchemaDefinition.pluralName = "Services";
    
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
      amplify_core.ModelIndex(fields: const ["donebyID"], name: "byDoneBy")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Service.TITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Service.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Service.CATEGORY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Service.PRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Service.ACTIVE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Service.STATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Service.IMGAE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Service.RUSER,
      isRequired: false,
      targetNames: ['userID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Service.RREVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.SERVICEID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Service.RDONEBY,
      isRequired: false,
      targetNames: ['donebyID'],
      ofModelName: 'DoneBy'
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

class _ServiceModelType extends amplify_core.ModelType<Service> {
  const _ServiceModelType();
  
  @override
  Service fromJson(Map<String, dynamic> jsonData) {
    return Service.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Service';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Service] in your schema.
 */
class ServiceModelIdentifier implements amplify_core.ModelIdentifier<Service> {
  final String id;

  /** Create an instance of ServiceModelIdentifier using [id] the primary key. */
  const ServiceModelIdentifier({
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
  String toString() => 'ServiceModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ServiceModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}