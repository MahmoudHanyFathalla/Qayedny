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


/** This is an auto generated class representing the Project type in your schema. */
class Project extends amplify_core.Model {
  static const classType = const _ProjectModelType();
  final String id;
  final String? _Title;
  final String? _Description;
  final String? _Image;
  final ECategory? _Category;
  final EPricingType? _PricingType;
  final int? _Price;
  final int? _EstimatedHours;
  final EProjectStatus? _Status;
  final int? _Views;
  final int? _Proposal;
  final EFreelancerType? _FreelancerType;
  final Review? _RReview;
  final List<ESkills>? _Skills;
  final User? _RUser;
  final List<String>? _ProposedUser;
  final DoneBy? _RDoneBy;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _projectRReviewId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ProjectModelIdentifier get modelIdentifier {
      return ProjectModelIdentifier(
        id: id
      );
  }
  
  String? get Title {
    return _Title;
  }
  
  String? get Description {
    return _Description;
  }
  
  String? get Image {
    return _Image;
  }
  
  ECategory? get Category {
    return _Category;
  }
  
  EPricingType? get PricingType {
    return _PricingType;
  }
  
  int? get Price {
    return _Price;
  }
  
  int? get EstimatedHours {
    return _EstimatedHours;
  }
  
  EProjectStatus? get Status {
    return _Status;
  }
  
  int? get Views {
    return _Views;
  }
  
  int? get Proposal {
    return _Proposal;
  }
  
  EFreelancerType? get FreelancerType {
    return _FreelancerType;
  }
  
  Review? get RReview {
    return _RReview;
  }
  
  List<ESkills>? get Skills {
    return _Skills;
  }
  
  User? get RUser {
    return _RUser;
  }
  
  List<String>? get ProposedUser {
    return _ProposedUser;
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
  
  String? get projectRReviewId {
    return _projectRReviewId;
  }
  
  const Project._internal({required this.id, Title, Description, Image, Category, PricingType, Price, EstimatedHours, Status, Views, Proposal, FreelancerType, RReview, Skills, RUser, ProposedUser, RDoneBy, createdAt, updatedAt, projectRReviewId}): _Title = Title, _Description = Description, _Image = Image, _Category = Category, _PricingType = PricingType, _Price = Price, _EstimatedHours = EstimatedHours, _Status = Status, _Views = Views, _Proposal = Proposal, _FreelancerType = FreelancerType, _RReview = RReview, _Skills = Skills, _RUser = RUser, _ProposedUser = ProposedUser, _RDoneBy = RDoneBy, _createdAt = createdAt, _updatedAt = updatedAt, _projectRReviewId = projectRReviewId;
  
  factory Project({String? id, String? Title, String? Description, String? Image, ECategory? Category, EPricingType? PricingType, int? Price, int? EstimatedHours, EProjectStatus? Status, int? Views, int? Proposal, EFreelancerType? FreelancerType, Review? RReview, List<ESkills>? Skills, User? RUser, List<String>? ProposedUser, DoneBy? RDoneBy, String? projectRReviewId}) {
    return Project._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      Title: Title,
      Description: Description,
      Image: Image,
      Category: Category,
      PricingType: PricingType,
      Price: Price,
      EstimatedHours: EstimatedHours,
      Status: Status,
      Views: Views,
      Proposal: Proposal,
      FreelancerType: FreelancerType,
      RReview: RReview,
      Skills: Skills != null ? List<ESkills>.unmodifiable(Skills) : Skills,
      RUser: RUser,
      ProposedUser: ProposedUser != null ? List<String>.unmodifiable(ProposedUser) : ProposedUser,
      RDoneBy: RDoneBy,
      projectRReviewId: projectRReviewId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
      id == other.id &&
      _Title == other._Title &&
      _Description == other._Description &&
      _Image == other._Image &&
      _Category == other._Category &&
      _PricingType == other._PricingType &&
      _Price == other._Price &&
      _EstimatedHours == other._EstimatedHours &&
      _Status == other._Status &&
      _Views == other._Views &&
      _Proposal == other._Proposal &&
      _FreelancerType == other._FreelancerType &&
      _RReview == other._RReview &&
      DeepCollectionEquality().equals(_Skills, other._Skills) &&
      _RUser == other._RUser &&
      DeepCollectionEquality().equals(_ProposedUser, other._ProposedUser) &&
      _RDoneBy == other._RDoneBy &&
      _projectRReviewId == other._projectRReviewId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Project {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Title=" + "$_Title" + ", ");
    buffer.write("Description=" + "$_Description" + ", ");
    buffer.write("Image=" + "$_Image" + ", ");
    buffer.write("Category=" + (_Category != null ? amplify_core.enumToString(_Category)! : "null") + ", ");
    buffer.write("PricingType=" + (_PricingType != null ? amplify_core.enumToString(_PricingType)! : "null") + ", ");
    buffer.write("Price=" + (_Price != null ? _Price!.toString() : "null") + ", ");
    buffer.write("EstimatedHours=" + (_EstimatedHours != null ? _EstimatedHours!.toString() : "null") + ", ");
    buffer.write("Status=" + (_Status != null ? amplify_core.enumToString(_Status)! : "null") + ", ");
    buffer.write("Views=" + (_Views != null ? _Views!.toString() : "null") + ", ");
    buffer.write("Proposal=" + (_Proposal != null ? _Proposal!.toString() : "null") + ", ");
    buffer.write("FreelancerType=" + (_FreelancerType != null ? amplify_core.enumToString(_FreelancerType)! : "null") + ", ");
    buffer.write("Skills=" + (_Skills != null ? _Skills!.map((e) => amplify_core.enumToString(e)).toString() : "null") + ", ");
    buffer.write("RUser=" + (_RUser != null ? _RUser!.toString() : "null") + ", ");
    buffer.write("ProposedUser=" + (_ProposedUser != null ? _ProposedUser!.toString() : "null") + ", ");
    buffer.write("RDoneBy=" + (_RDoneBy != null ? _RDoneBy!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("projectRReviewId=" + "$_projectRReviewId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Project copyWith({String? Title, String? Description, String? Image, ECategory? Category, EPricingType? PricingType, int? Price, int? EstimatedHours, EProjectStatus? Status, int? Views, int? Proposal, EFreelancerType? FreelancerType, Review? RReview, List<ESkills>? Skills, User? RUser, List<String>? ProposedUser, DoneBy? RDoneBy, String? projectRReviewId}) {
    return Project._internal(
      id: id,
      Title: Title ?? this.Title,
      Description: Description ?? this.Description,
      Image: Image ?? this.Image,
      Category: Category ?? this.Category,
      PricingType: PricingType ?? this.PricingType,
      Price: Price ?? this.Price,
      EstimatedHours: EstimatedHours ?? this.EstimatedHours,
      Status: Status ?? this.Status,
      Views: Views ?? this.Views,
      Proposal: Proposal ?? this.Proposal,
      FreelancerType: FreelancerType ?? this.FreelancerType,
      RReview: RReview ?? this.RReview,
      Skills: Skills ?? this.Skills,
      RUser: RUser ?? this.RUser,
      ProposedUser: ProposedUser ?? this.ProposedUser,
      RDoneBy: RDoneBy ?? this.RDoneBy,
      projectRReviewId: projectRReviewId ?? this.projectRReviewId);
  }
  
  Project copyWithModelFieldValues({
    ModelFieldValue<String?>? Title,
    ModelFieldValue<String?>? Description,
    ModelFieldValue<String?>? Image,
    ModelFieldValue<ECategory?>? Category,
    ModelFieldValue<EPricingType?>? PricingType,
    ModelFieldValue<int?>? Price,
    ModelFieldValue<int?>? EstimatedHours,
    ModelFieldValue<EProjectStatus?>? Status,
    ModelFieldValue<int?>? Views,
    ModelFieldValue<int?>? Proposal,
    ModelFieldValue<EFreelancerType?>? FreelancerType,
    ModelFieldValue<Review?>? RReview,
    ModelFieldValue<List<ESkills>?>? Skills,
    ModelFieldValue<User?>? RUser,
    ModelFieldValue<List<String>?>? ProposedUser,
    ModelFieldValue<DoneBy?>? RDoneBy,
    ModelFieldValue<String?>? projectRReviewId
  }) {
    return Project._internal(
      id: id,
      Title: Title == null ? this.Title : Title.value,
      Description: Description == null ? this.Description : Description.value,
      Image: Image == null ? this.Image : Image.value,
      Category: Category == null ? this.Category : Category.value,
      PricingType: PricingType == null ? this.PricingType : PricingType.value,
      Price: Price == null ? this.Price : Price.value,
      EstimatedHours: EstimatedHours == null ? this.EstimatedHours : EstimatedHours.value,
      Status: Status == null ? this.Status : Status.value,
      Views: Views == null ? this.Views : Views.value,
      Proposal: Proposal == null ? this.Proposal : Proposal.value,
      FreelancerType: FreelancerType == null ? this.FreelancerType : FreelancerType.value,
      RReview: RReview == null ? this.RReview : RReview.value,
      Skills: Skills == null ? this.Skills : Skills.value,
      RUser: RUser == null ? this.RUser : RUser.value,
      ProposedUser: ProposedUser == null ? this.ProposedUser : ProposedUser.value,
      RDoneBy: RDoneBy == null ? this.RDoneBy : RDoneBy.value,
      projectRReviewId: projectRReviewId == null ? this.projectRReviewId : projectRReviewId.value
    );
  }
  
  Project.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Title = json['Title'],
      _Description = json['Description'],
      _Image = json['Image'],
      _Category = amplify_core.enumFromString<ECategory>(json['Category'], ECategory.values),
      _PricingType = amplify_core.enumFromString<EPricingType>(json['PricingType'], EPricingType.values),
      _Price = (json['Price'] as num?)?.toInt(),
      _EstimatedHours = (json['EstimatedHours'] as num?)?.toInt(),
      _Status = amplify_core.enumFromString<EProjectStatus>(json['Status'], EProjectStatus.values),
      _Views = (json['Views'] as num?)?.toInt(),
      _Proposal = (json['Proposal'] as num?)?.toInt(),
      _FreelancerType = amplify_core.enumFromString<EFreelancerType>(json['FreelancerType'], EFreelancerType.values),
      _RReview = json['RReview']?['serializedData'] != null
        ? Review.fromJson(new Map<String, dynamic>.from(json['RReview']['serializedData']))
        : null,
      _Skills = json['Skills'] is List
        ? (json['Skills'] as List)
          .map((e) => amplify_core.enumFromString<ESkills>(e, ESkills.values)!)
          .toList()
        : null,
      _RUser = json['RUser']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['RUser']['serializedData']))
        : null,
      _ProposedUser = json['ProposedUser']?.cast<String>(),
      _RDoneBy = json['RDoneBy']?['serializedData'] != null
        ? DoneBy.fromJson(new Map<String, dynamic>.from(json['RDoneBy']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _projectRReviewId = json['projectRReviewId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Title': _Title, 'Description': _Description, 'Image': _Image, 'Category': amplify_core.enumToString(_Category), 'PricingType': amplify_core.enumToString(_PricingType), 'Price': _Price, 'EstimatedHours': _EstimatedHours, 'Status': amplify_core.enumToString(_Status), 'Views': _Views, 'Proposal': _Proposal, 'FreelancerType': amplify_core.enumToString(_FreelancerType), 'RReview': _RReview?.toJson(), 'Skills': _Skills?.map((e) => amplify_core.enumToString(e)).toList(), 'RUser': _RUser?.toJson(), 'ProposedUser': _ProposedUser, 'RDoneBy': _RDoneBy?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'projectRReviewId': _projectRReviewId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'Title': _Title,
    'Description': _Description,
    'Image': _Image,
    'Category': _Category,
    'PricingType': _PricingType,
    'Price': _Price,
    'EstimatedHours': _EstimatedHours,
    'Status': _Status,
    'Views': _Views,
    'Proposal': _Proposal,
    'FreelancerType': _FreelancerType,
    'RReview': _RReview,
    'Skills': _Skills,
    'RUser': _RUser,
    'ProposedUser': _ProposedUser,
    'RDoneBy': _RDoneBy,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'projectRReviewId': _projectRReviewId
  };

  static final amplify_core.QueryModelIdentifier<ProjectModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ProjectModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "Title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "Description");
  static final IMAGE = amplify_core.QueryField(fieldName: "Image");
  static final CATEGORY = amplify_core.QueryField(fieldName: "Category");
  static final PRICINGTYPE = amplify_core.QueryField(fieldName: "PricingType");
  static final PRICE = amplify_core.QueryField(fieldName: "Price");
  static final ESTIMATEDHOURS = amplify_core.QueryField(fieldName: "EstimatedHours");
  static final STATUS = amplify_core.QueryField(fieldName: "Status");
  static final VIEWS = amplify_core.QueryField(fieldName: "Views");
  static final PROPOSAL = amplify_core.QueryField(fieldName: "Proposal");
  static final FREELANCERTYPE = amplify_core.QueryField(fieldName: "FreelancerType");
  static final RREVIEW = amplify_core.QueryField(
    fieldName: "RReview",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final SKILLS = amplify_core.QueryField(fieldName: "Skills");
  static final RUSER = amplify_core.QueryField(
    fieldName: "RUser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final PROPOSEDUSER = amplify_core.QueryField(fieldName: "ProposedUser");
  static final RDONEBY = amplify_core.QueryField(
    fieldName: "RDoneBy",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'DoneBy'));
  static final PROJECTRREVIEWID = amplify_core.QueryField(fieldName: "projectRReviewId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Project";
    modelSchemaDefinition.pluralName = "Projects";
    
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
      key: Project.TITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.IMAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.CATEGORY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PRICINGTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.ESTIMATEDHOURS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.STATUS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.VIEWS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROPOSAL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.FREELANCERTYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Project.RREVIEW,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.SKILLS,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.enumeration.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Project.RUSER,
      isRequired: false,
      targetNames: ['userID'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROPOSEDUSER,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Project.RDONEBY,
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Project.PROJECTRREVIEWID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _ProjectModelType extends amplify_core.ModelType<Project> {
  const _ProjectModelType();
  
  @override
  Project fromJson(Map<String, dynamic> jsonData) {
    return Project.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Project';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Project] in your schema.
 */
class ProjectModelIdentifier implements amplify_core.ModelIdentifier<Project> {
  final String id;

  /** Create an instance of ProjectModelIdentifier using [id] the primary key. */
  const ProjectModelIdentifier({
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
  String toString() => 'ProjectModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ProjectModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}