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
import 'package:collection/collection.dart';
import 'package:qayedny/features/authentication/data/models/EUserType.dart';
import 'package:qayedny/features/authentication/data/models/UserInfo.dart';
import 'package:qayedny/features/authentication/data/models/User_profile_model.dart';
import 'package:qayedny/models/CouponUser.dart';
import 'package:qayedny/models/ModelProvider.dart';
import 'package:qayedny/models/Project.dart';
import 'package:qayedny/models/Review.dart';

/** This is an auto generated class representing the User type in your schema. */
class User extends amplify_core.Model {
  static const classType = const _UserModelType();
  final String id;
  final UserProfileModel? _RUserProfile;
  final UserInfo? _RUserInfo;
  final int? _Wallet;
  final EUserType? _UserType;
  final List<Review>? _RReviews;
  final List<Project>? _RHaveProjects;
  final List<String>? _AppliedProjects;
  final List<Service>? _RHaveServices;
  final List<CouponUser>? _RCouponsRedeemed;
  final List<String>? _AppliedServices;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _userRUserProfileId;
  final String? _userRUserInfoId;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  UserModelIdentifier get modelIdentifier {
    return UserModelIdentifier(id: id);
  }

  UserProfileModel? get RUserProfile {
    return _RUserProfile;
  }

  UserInfo? get RUserInfo {
    return _RUserInfo;
  }

  int? get Wallet {
    return _Wallet;
  }

  EUserType get UserType {
    try {
      return _UserType!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<Review>? get RReviews {
    return _RReviews;
  }

  List<Project>? get RHaveProjects {
    return _RHaveProjects;
  }

  List<String>? get AppliedProjects {
    return _AppliedProjects;
  }

  List<Service>? get RHaveServices {
    return _RHaveServices;
  }

  List<CouponUser>? get RCouponsRedeemed {
    return _RCouponsRedeemed;
  }

  List<String>? get AppliedServices {
    return _AppliedServices;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get userRUserProfileId {
    return _userRUserProfileId;
  }

  String? get userRUserInfoId {
    return _userRUserInfoId;
  }

  const User._internal(
      {required this.id,
      RUserProfile,
      RUserInfo,
      Wallet,
      required UserType,
      RReviews,
      RHaveProjects,
      AppliedProjects,
      RHaveServices,
      RCouponsRedeemed,
      AppliedServices,
      createdAt,
      updatedAt,
      userRUserProfileId,
      userRUserInfoId})
      : _RUserProfile = RUserProfile,
        _RUserInfo = RUserInfo,
        _Wallet = Wallet,
        _UserType = UserType,
        _RReviews = RReviews,
        _RHaveProjects = RHaveProjects,
        _AppliedProjects = AppliedProjects,
        _RHaveServices = RHaveServices,
        _RCouponsRedeemed = RCouponsRedeemed,
        _AppliedServices = AppliedServices,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _userRUserProfileId = userRUserProfileId,
        _userRUserInfoId = userRUserInfoId;

  factory User(
      {String? id,
      UserProfileModel? RUserProfile,
      UserInfo? RUserInfo,
      int? Wallet,
      required EUserType UserType,
      List<Review>? RReviews,
      List<Project>? RHaveProjects,
      List<String>? AppliedProjects,
      List<Service>? RHaveServices,
      List<CouponUser>? RCouponsRedeemed,
      List<String>? AppliedServices,
      String? userRUserProfileId,
      String? userRUserInfoId}) {
    return User._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        RUserProfile: RUserProfile,
        RUserInfo: RUserInfo,
        Wallet: Wallet,
        UserType: UserType,
        RReviews:
            RReviews != null ? List<Review>.unmodifiable(RReviews) : RReviews,
        RHaveProjects: RHaveProjects != null
            ? List<Project>.unmodifiable(RHaveProjects)
            : RHaveProjects,
        AppliedProjects: AppliedProjects != null
            ? List<String>.unmodifiable(AppliedProjects)
            : AppliedProjects,
        RHaveServices: RHaveServices != null
            ? List<Service>.unmodifiable(RHaveServices)
            : RHaveServices,
        RCouponsRedeemed: RCouponsRedeemed != null
            ? List<CouponUser>.unmodifiable(RCouponsRedeemed)
            : RCouponsRedeemed,
        AppliedServices: AppliedServices != null
            ? List<String>.unmodifiable(AppliedServices)
            : AppliedServices,
        userRUserProfileId: userRUserProfileId,
        userRUserInfoId: userRUserInfoId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        _RUserProfile == other._RUserProfile &&
        _RUserInfo == other._RUserInfo &&
        _Wallet == other._Wallet &&
        _UserType == other._UserType &&
        DeepCollectionEquality().equals(_RReviews, other._RReviews) &&
        DeepCollectionEquality().equals(_RHaveProjects, other._RHaveProjects) &&
        DeepCollectionEquality()
            .equals(_AppliedProjects, other._AppliedProjects) &&
        DeepCollectionEquality().equals(_RHaveServices, other._RHaveServices) &&
        DeepCollectionEquality()
            .equals(_RCouponsRedeemed, other._RCouponsRedeemed) &&
        DeepCollectionEquality()
            .equals(_AppliedServices, other._AppliedServices) &&
        _userRUserProfileId == other._userRUserProfileId &&
        _userRUserInfoId == other._userRUserInfoId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write(
        "Wallet=" + (_Wallet != null ? _Wallet!.toString() : "null") + ", ");
    buffer.write("UserType=" +
        (_UserType != null ? amplify_core.enumToString(_UserType)! : "null") +
        ", ");
    buffer.write("AppliedProjects=" +
        (_AppliedProjects != null ? _AppliedProjects!.toString() : "null") +
        ", ");
    buffer.write("AppliedServices=" +
        (_AppliedServices != null ? _AppliedServices!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("userRUserProfileId=" + "$_userRUserProfileId" + ", ");
    buffer.write("userRUserInfoId=" + "$_userRUserInfoId");
    buffer.write("}");

    return buffer.toString();
  }

  User copyWith(
      {UserProfileModel? RUserProfile,
      UserInfo? RUserInfo,
      int? Wallet,
      EUserType? UserType,
      List<Review>? RReviews,
      List<Project>? RHaveProjects,
      List<String>? AppliedProjects,
      List<Service>? RHaveServices,
      List<CouponUser>? RCouponsRedeemed,
      List<String>? AppliedServices,
      String? userRUserProfileId,
      String? userRUserInfoId}) {
    return User._internal(
        id: id,
        RUserProfile: RUserProfile ?? this.RUserProfile,
        RUserInfo: RUserInfo ?? this.RUserInfo,
        Wallet: Wallet ?? this.Wallet,
        UserType: UserType ?? this.UserType,
        RReviews: RReviews ?? this.RReviews,
        RHaveProjects: RHaveProjects ?? this.RHaveProjects,
        AppliedProjects: AppliedProjects ?? this.AppliedProjects,
        RHaveServices: RHaveServices ?? this.RHaveServices,
        RCouponsRedeemed: RCouponsRedeemed ?? this.RCouponsRedeemed,
        AppliedServices: AppliedServices ?? this.AppliedServices,
        userRUserProfileId: userRUserProfileId ?? this.userRUserProfileId,
        userRUserInfoId: userRUserInfoId ?? this.userRUserInfoId);
  }

  User copyWithModelFieldValues(
      {ModelFieldValue<UserProfileModel?>? RUserProfile,
      ModelFieldValue<UserInfo?>? RUserInfo,
      ModelFieldValue<int?>? Wallet,
      ModelFieldValue<EUserType>? UserType,
      ModelFieldValue<List<Review>?>? RReviews,
      ModelFieldValue<List<Project>?>? RHaveProjects,
      ModelFieldValue<List<String>?>? AppliedProjects,
      ModelFieldValue<List<Service>?>? RHaveServices,
      ModelFieldValue<List<CouponUser>?>? RCouponsRedeemed,
      ModelFieldValue<List<String>?>? AppliedServices,
      ModelFieldValue<String?>? userRUserProfileId,
      ModelFieldValue<String?>? userRUserInfoId}) {
    return User._internal(
        id: id,
        RUserProfile:
            RUserProfile == null ? this.RUserProfile : RUserProfile.value,
        RUserInfo: RUserInfo == null ? this.RUserInfo : RUserInfo.value,
        Wallet: Wallet == null ? this.Wallet : Wallet.value,
        UserType: UserType == null ? this.UserType : UserType.value,
        RReviews: RReviews == null ? this.RReviews : RReviews.value,
        RHaveProjects:
            RHaveProjects == null ? this.RHaveProjects : RHaveProjects.value,
        AppliedProjects: AppliedProjects == null
            ? this.AppliedProjects
            : AppliedProjects.value,
        RHaveServices:
            RHaveServices == null ? this.RHaveServices : RHaveServices.value,
        RCouponsRedeemed: RCouponsRedeemed == null
            ? this.RCouponsRedeemed
            : RCouponsRedeemed.value,
        AppliedServices: AppliedServices == null
            ? this.AppliedServices
            : AppliedServices.value,
        userRUserProfileId: userRUserProfileId == null
            ? this.userRUserProfileId
            : userRUserProfileId.value,
        userRUserInfoId: userRUserInfoId == null
            ? this.userRUserInfoId
            : userRUserInfoId.value);
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _RUserProfile = json['RUserProfile']?['serializedData'] != null
            ? UserProfileModel.fromJson(new Map<String, dynamic>.from(
                json['RUserProfile']['serializedData']))
            : null,
        _RUserInfo = json['RUserInfo']?['serializedData'] != null
            ? UserInfo.fromJson(new Map<String, dynamic>.from(
                json['RUserInfo']['serializedData']))
            : null,
        _Wallet = (json['Wallet'] as num?)?.toInt(),
        _UserType = amplify_core.enumFromString<EUserType>(
            json['UserType'], EUserType.values),
        _RReviews = json['RReviews'] is List
            ? (json['RReviews'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Review.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _RHaveProjects = json['RHaveProjects'] is List
            ? (json['RHaveProjects'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Project.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _AppliedProjects = json['AppliedProjects']?.cast<String>(),
        _RHaveServices = json['RHaveServices'] is List
            ? (json['RHaveServices'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => Service.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _RCouponsRedeemed = json['RCouponsRedeemed'] is List
            ? (json['RCouponsRedeemed'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => CouponUser.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _AppliedServices = json['AppliedServices']?.cast<String>(),
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _userRUserProfileId = json['userRUserProfileId'],
        _userRUserInfoId = json['userRUserInfoId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'RUserProfile': _RUserProfile?.toJson(),
        'RUserInfo': _RUserInfo?.toJson(),
        'Wallet': _Wallet,
        'UserType': amplify_core.enumToString(_UserType),
        'RReviews': _RReviews?.map((Review? e) => e?.toJson()).toList(),
        'RHaveProjects':
            _RHaveProjects?.map((Project? e) => e?.toJson()).toList(),
        'AppliedProjects': _AppliedProjects,
        'RHaveServices':
            _RHaveServices?.map((Service? e) => e?.toJson()).toList(),
        'RCouponsRedeemed':
            _RCouponsRedeemed?.map((CouponUser? e) => e?.toJson()).toList(),
        'AppliedServices': _AppliedServices,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'userRUserProfileId': _userRUserProfileId,
        'userRUserInfoId': _userRUserInfoId
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'RUserProfile': _RUserProfile,
        'RUserInfo': _RUserInfo,
        'Wallet': _Wallet,
        'UserType': _UserType,
        'RReviews': _RReviews,
        'RHaveProjects': _RHaveProjects,
        'AppliedProjects': _AppliedProjects,
        'RHaveServices': _RHaveServices,
        'RCouponsRedeemed': _RCouponsRedeemed,
        'AppliedServices': _AppliedServices,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'userRUserProfileId': _userRUserProfileId,
        'userRUserInfoId': _userRUserInfoId
      };

  static final amplify_core.QueryModelIdentifier<UserModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<UserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final RUSERPROFILE = amplify_core.QueryField(
      fieldName: "RUserProfile",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'UserProfile'));
  static final RUSERINFO = amplify_core.QueryField(
      fieldName: "RUserInfo",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'UserInfo'));
  static final WALLET = amplify_core.QueryField(fieldName: "Wallet");
  static final USERTYPE = amplify_core.QueryField(fieldName: "UserType");
  static final RREVIEWS = amplify_core.QueryField(
      fieldName: "RReviews",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'Review'));
  static final RHAVEPROJECTS = amplify_core.QueryField(
      fieldName: "RHaveProjects",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'Project'));
  static final APPLIEDPROJECTS =
      amplify_core.QueryField(fieldName: "AppliedProjects");
  static final RHAVESERVICES = amplify_core.QueryField(
      fieldName: "RHaveServices",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'Service'));
  static final RCOUPONSREDEEMED = amplify_core.QueryField(
      fieldName: "RCouponsRedeemed",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CouponUser'));
  static final APPLIEDSERVICES =
      amplify_core.QueryField(fieldName: "AppliedServices");
  static final USERRUSERPROFILEID =
      amplify_core.QueryField(fieldName: "userRUserProfileId");
  static final USERRUSERINFOID =
      amplify_core.QueryField(fieldName: "userRUserInfoId");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";

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
        key: User.RUSERPROFILE,
        isRequired: false,
        ofModelName: 'UserProfile',
        associatedKey: UserProfileModel.ID));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
        key: User.RUSERINFO,
        isRequired: false,
        ofModelName: 'UserInfo',
        associatedKey: UserInfo.ID));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: User.WALLET,
        isRequired: false,
        ofType:
            amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: User.USERTYPE,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
        key: User.RREVIEWS,
        isRequired: false,
        ofModelName: 'Review',
        associatedKey: Review.RUSER));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
        key: User.RHAVEPROJECTS,
        isRequired: false,
        ofModelName: 'Project',
        associatedKey: Project.RUSER));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: User.APPLIEDPROJECTS,
        isRequired: false,
        isArray: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.collection,
            ofModelName: amplify_core.ModelFieldTypeEnum.string.name)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
        key: User.RHAVESERVICES,
        isRequired: false,
        ofModelName: 'Service',
        associatedKey: Service.RUSER));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
        key: User.RCOUPONSREDEEMED,
        isRequired: false,
        ofModelName: 'CouponUser',
        associatedKey: CouponUser.USER));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: User.APPLIEDSERVICES,
        isRequired: false,
        isArray: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.collection,
            ofModelName: amplify_core.ModelFieldTypeEnum.string.name)));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'createdAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'updatedAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: User.USERRUSERPROFILEID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: User.USERRUSERINFOID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));
  });
}

class _UserModelType extends amplify_core.ModelType<User> {
  const _UserModelType();

  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
class UserModelIdentifier implements amplify_core.ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'UserModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is UserModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
