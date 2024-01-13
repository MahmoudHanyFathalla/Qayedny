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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Coupon type in your schema. */
class Coupon extends amplify_core.Model {
  static const classType = const _CouponModelType();
  final String id;
  final String? _Title;
  final String? _Subtitle;
  final String? _Image;
  final ECouponType? _Type;
  final int? _Price;
  final amplify_core.TemporalDate? _ExpirationDate;
  final String? _RulesInfo;
  final int? _NumberOfRedeems;
  final String? _QRgenerate;
  final List<ECouponTag>? _Tags;
  final bool? _Active;
  final String? _Sharelink;
  final List<CouponUser>? _RUserRedeemed;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CouponModelIdentifier get modelIdentifier {
      return CouponModelIdentifier(
        id: id
      );
  }
  
  String? get Title {
    return _Title;
  }
  
  String? get Subtitle {
    return _Subtitle;
  }
  
  String? get Image {
    return _Image;
  }
  
  ECouponType? get Type {
    return _Type;
  }
  
  int? get Price {
    return _Price;
  }
  
  amplify_core.TemporalDate? get ExpirationDate {
    return _ExpirationDate;
  }
  
  String? get RulesInfo {
    return _RulesInfo;
  }
  
  int? get NumberOfRedeems {
    return _NumberOfRedeems;
  }
  
  String? get QRgenerate {
    return _QRgenerate;
  }
  
  List<ECouponTag> get Tags {
    try {
      return _Tags!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool? get Active {
    return _Active;
  }
  
  String? get Sharelink {
    return _Sharelink;
  }
  
  List<CouponUser>? get RUserRedeemed {
    return _RUserRedeemed;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Coupon._internal({required this.id, Title, Subtitle, Image, Type, Price, ExpirationDate, RulesInfo, NumberOfRedeems, QRgenerate, required Tags, Active, Sharelink, RUserRedeemed, createdAt, updatedAt}): _Title = Title, _Subtitle = Subtitle, _Image = Image, _Type = Type, _Price = Price, _ExpirationDate = ExpirationDate, _RulesInfo = RulesInfo, _NumberOfRedeems = NumberOfRedeems, _QRgenerate = QRgenerate, _Tags = Tags, _Active = Active, _Sharelink = Sharelink, _RUserRedeemed = RUserRedeemed, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Coupon({String? id, String? Title, String? Subtitle, String? Image, ECouponType? Type, int? Price, amplify_core.TemporalDate? ExpirationDate, String? RulesInfo, int? NumberOfRedeems, String? QRgenerate, required List<ECouponTag> Tags, bool? Active, String? Sharelink, List<CouponUser>? RUserRedeemed}) {
    return Coupon._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      Title: Title,
      Subtitle: Subtitle,
      Image: Image,
      Type: Type,
      Price: Price,
      ExpirationDate: ExpirationDate,
      RulesInfo: RulesInfo,
      NumberOfRedeems: NumberOfRedeems,
      QRgenerate: QRgenerate,
      Tags: Tags != null ? List<ECouponTag>.unmodifiable(Tags) : Tags,
      Active: Active,
      Sharelink: Sharelink,
      RUserRedeemed: RUserRedeemed != null ? List<CouponUser>.unmodifiable(RUserRedeemed) : RUserRedeemed);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coupon &&
      id == other.id &&
      _Title == other._Title &&
      _Subtitle == other._Subtitle &&
      _Image == other._Image &&
      _Type == other._Type &&
      _Price == other._Price &&
      _ExpirationDate == other._ExpirationDate &&
      _RulesInfo == other._RulesInfo &&
      _NumberOfRedeems == other._NumberOfRedeems &&
      _QRgenerate == other._QRgenerate &&
      DeepCollectionEquality().equals(_Tags, other._Tags) &&
      _Active == other._Active &&
      _Sharelink == other._Sharelink &&
      DeepCollectionEquality().equals(_RUserRedeemed, other._RUserRedeemed);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Coupon {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("Title=" + "$_Title" + ", ");
    buffer.write("Subtitle=" + "$_Subtitle" + ", ");
    buffer.write("Image=" + "$_Image" + ", ");
    buffer.write("Type=" + (_Type != null ? amplify_core.enumToString(_Type)! : "null") + ", ");
    buffer.write("Price=" + (_Price != null ? _Price!.toString() : "null") + ", ");
    buffer.write("ExpirationDate=" + (_ExpirationDate != null ? _ExpirationDate!.format() : "null") + ", ");
    buffer.write("RulesInfo=" + "$_RulesInfo" + ", ");
    buffer.write("NumberOfRedeems=" + (_NumberOfRedeems != null ? _NumberOfRedeems!.toString() : "null") + ", ");
    buffer.write("QRgenerate=" + "$_QRgenerate" + ", ");
    buffer.write("Tags=" + (_Tags != null ? _Tags!.map((e) => amplify_core.enumToString(e)).toString() : "null") + ", ");
    buffer.write("Active=" + (_Active != null ? _Active!.toString() : "null") + ", ");
    buffer.write("Sharelink=" + "$_Sharelink" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Coupon copyWith({String? Title, String? Subtitle, String? Image, ECouponType? Type, int? Price, amplify_core.TemporalDate? ExpirationDate, String? RulesInfo, int? NumberOfRedeems, String? QRgenerate, List<ECouponTag>? Tags, bool? Active, String? Sharelink, List<CouponUser>? RUserRedeemed}) {
    return Coupon._internal(
      id: id,
      Title: Title ?? this.Title,
      Subtitle: Subtitle ?? this.Subtitle,
      Image: Image ?? this.Image,
      Type: Type ?? this.Type,
      Price: Price ?? this.Price,
      ExpirationDate: ExpirationDate ?? this.ExpirationDate,
      RulesInfo: RulesInfo ?? this.RulesInfo,
      NumberOfRedeems: NumberOfRedeems ?? this.NumberOfRedeems,
      QRgenerate: QRgenerate ?? this.QRgenerate,
      Tags: Tags ?? this.Tags,
      Active: Active ?? this.Active,
      Sharelink: Sharelink ?? this.Sharelink,
      RUserRedeemed: RUserRedeemed ?? this.RUserRedeemed);
  }
  
  Coupon copyWithModelFieldValues({
    ModelFieldValue<String?>? Title,
    ModelFieldValue<String?>? Subtitle,
    ModelFieldValue<String?>? Image,
    ModelFieldValue<ECouponType?>? Type,
    ModelFieldValue<int?>? Price,
    ModelFieldValue<amplify_core.TemporalDate?>? ExpirationDate,
    ModelFieldValue<String?>? RulesInfo,
    ModelFieldValue<int?>? NumberOfRedeems,
    ModelFieldValue<String?>? QRgenerate,
    ModelFieldValue<List<ECouponTag>?>? Tags,
    ModelFieldValue<bool?>? Active,
    ModelFieldValue<String?>? Sharelink,
    ModelFieldValue<List<CouponUser>?>? RUserRedeemed
  }) {
    return Coupon._internal(
      id: id,
      Title: Title == null ? this.Title : Title.value,
      Subtitle: Subtitle == null ? this.Subtitle : Subtitle.value,
      Image: Image == null ? this.Image : Image.value,
      Type: Type == null ? this.Type : Type.value,
      Price: Price == null ? this.Price : Price.value,
      ExpirationDate: ExpirationDate == null ? this.ExpirationDate : ExpirationDate.value,
      RulesInfo: RulesInfo == null ? this.RulesInfo : RulesInfo.value,
      NumberOfRedeems: NumberOfRedeems == null ? this.NumberOfRedeems : NumberOfRedeems.value,
      QRgenerate: QRgenerate == null ? this.QRgenerate : QRgenerate.value,
      Tags: Tags == null ? this.Tags : Tags.value,
      Active: Active == null ? this.Active : Active.value,
      Sharelink: Sharelink == null ? this.Sharelink : Sharelink.value,
      RUserRedeemed: RUserRedeemed == null ? this.RUserRedeemed : RUserRedeemed.value
    );
  }
  
  Coupon.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _Title = json['Title'],
      _Subtitle = json['Subtitle'],
      _Image = json['Image'],
      _Type = amplify_core.enumFromString<ECouponType>(json['Type'], ECouponType.values),
      _Price = (json['Price'] as num?)?.toInt(),
      _ExpirationDate = json['ExpirationDate'] != null ? amplify_core.TemporalDate.fromString(json['ExpirationDate']) : null,
      _RulesInfo = json['RulesInfo'],
      _NumberOfRedeems = (json['NumberOfRedeems'] as num?)?.toInt(),
      _QRgenerate = json['QRgenerate'],
      _Tags = json['Tags'] is List
        ? (json['Tags'] as List)
          .map((e) => amplify_core.enumFromString<ECouponTag>(e, ECouponTag.values)!)
          .toList()
        : null,
      _Active = json['Active'],
      _Sharelink = json['Sharelink'],
      _RUserRedeemed = json['RUserRedeemed'] is List
        ? (json['RUserRedeemed'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => CouponUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'Title': _Title, 'Subtitle': _Subtitle, 'Image': _Image, 'Type': amplify_core.enumToString(_Type), 'Price': _Price, 'ExpirationDate': _ExpirationDate?.format(), 'RulesInfo': _RulesInfo, 'NumberOfRedeems': _NumberOfRedeems, 'QRgenerate': _QRgenerate, 'Tags': _Tags?.map((e) => amplify_core.enumToString(e)).toList(), 'Active': _Active, 'Sharelink': _Sharelink, 'RUserRedeemed': _RUserRedeemed?.map((CouponUser? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'Title': _Title,
    'Subtitle': _Subtitle,
    'Image': _Image,
    'Type': _Type,
    'Price': _Price,
    'ExpirationDate': _ExpirationDate,
    'RulesInfo': _RulesInfo,
    'NumberOfRedeems': _NumberOfRedeems,
    'QRgenerate': _QRgenerate,
    'Tags': _Tags,
    'Active': _Active,
    'Sharelink': _Sharelink,
    'RUserRedeemed': _RUserRedeemed,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CouponModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CouponModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "Title");
  static final SUBTITLE = amplify_core.QueryField(fieldName: "Subtitle");
  static final IMAGE = amplify_core.QueryField(fieldName: "Image");
  static final TYPE = amplify_core.QueryField(fieldName: "Type");
  static final PRICE = amplify_core.QueryField(fieldName: "Price");
  static final EXPIRATIONDATE = amplify_core.QueryField(fieldName: "ExpirationDate");
  static final RULESINFO = amplify_core.QueryField(fieldName: "RulesInfo");
  static final NUMBEROFREDEEMS = amplify_core.QueryField(fieldName: "NumberOfRedeems");
  static final QRGENERATE = amplify_core.QueryField(fieldName: "QRgenerate");
  static final TAGS = amplify_core.QueryField(fieldName: "Tags");
  static final ACTIVE = amplify_core.QueryField(fieldName: "Active");
  static final SHARELINK = amplify_core.QueryField(fieldName: "Sharelink");
  static final RUSERREDEEMED = amplify_core.QueryField(
    fieldName: "RUserRedeemed",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'CouponUser'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Coupon";
    modelSchemaDefinition.pluralName = "Coupons";
    
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
      key: Coupon.TITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.SUBTITLE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.IMAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.TYPE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.PRICE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.EXPIRATIONDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.RULESINFO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.NUMBEROFREDEEMS,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.QRGENERATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.TAGS,
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.enumeration.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.ACTIVE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Coupon.SHARELINK,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Coupon.RUSERREDEEMED,
      isRequired: false,
      ofModelName: 'CouponUser',
      associatedKey: CouponUser.COUPON
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

class _CouponModelType extends amplify_core.ModelType<Coupon> {
  const _CouponModelType();
  
  @override
  Coupon fromJson(Map<String, dynamic> jsonData) {
    return Coupon.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Coupon';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Coupon] in your schema.
 */
class CouponModelIdentifier implements amplify_core.ModelIdentifier<Coupon> {
  final String id;

  /** Create an instance of CouponModelIdentifier using [id] the primary key. */
  const CouponModelIdentifier({
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
  String toString() => 'CouponModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CouponModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}