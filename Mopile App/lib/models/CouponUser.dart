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

/** This is an auto generated class representing the CouponUser type in your schema. */
class CouponUser extends amplify_core.Model {
  static const classType = const _CouponUserModelType();
  final String id;
  final Coupon? _coupon;
  final User? _user;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CouponUserModelIdentifier get modelIdentifier {
    return CouponUserModelIdentifier(id: id);
  }

  Coupon get coupon {
    try {
      return _coupon!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  User get user {
    try {
      return _user!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CouponUser._internal(
      {required this.id, required coupon, required user, createdAt, updatedAt})
      : _coupon = coupon,
        _user = user,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CouponUser({String? id, required Coupon coupon, required User user}) {
    return CouponUser._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        coupon: coupon,
        user: user);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CouponUser &&
        id == other.id &&
        _coupon == other._coupon &&
        _user == other._user;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CouponUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write(
        "coupon=" + (_coupon != null ? _coupon!.toString() : "null") + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CouponUser copyWith({Coupon? coupon, User? user}) {
    return CouponUser._internal(
        id: id, coupon: coupon ?? this.coupon, user: user ?? this.user);
  }

  CouponUser copyWithModelFieldValues(
      {ModelFieldValue<Coupon>? coupon, ModelFieldValue<User>? user}) {
    return CouponUser._internal(
        id: id,
        coupon: coupon == null ? this.coupon : coupon.value,
        user: user == null ? this.user : user.value);
  }

  CouponUser.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _coupon = json['coupon']?['serializedData'] != null
            ? Coupon.fromJson(
                new Map<String, dynamic>.from(json['coupon']['serializedData']))
            : null,
        _user = json['user']?['serializedData'] != null
            ? User.fromJson(
                new Map<String, dynamic>.from(json['user']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'coupon': _coupon?.toJson(),
        'user': _user?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'coupon': _coupon,
        'user': _user,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core.QueryModelIdentifier<CouponUserModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<CouponUserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final COUPON = amplify_core.QueryField(
      fieldName: "coupon",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'Coupon'));
  static final USER = amplify_core.QueryField(
      fieldName: "user",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'User'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CouponUser";
    modelSchemaDefinition.pluralName = "CouponUsers";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["couponId"], name: "byCoupon"),
      amplify_core.ModelIndex(fields: const ["userId"], name: "byUser")
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: CouponUser.COUPON,
        isRequired: true,
        targetNames: ['couponId'],
        ofModelName: 'Coupon'));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: CouponUser.USER,
        isRequired: true,
        targetNames: ['userId'],
        ofModelName: 'User'));

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
  });
}

class _CouponUserModelType extends amplify_core.ModelType<CouponUser> {
  const _CouponUserModelType();

  @override
  CouponUser fromJson(Map<String, dynamic> jsonData) {
    return CouponUser.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CouponUser';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CouponUser] in your schema.
 */
class CouponUserModelIdentifier
    implements amplify_core.ModelIdentifier<CouponUser> {
  final String id;

  /** Create an instance of CouponUserModelIdentifier using [id] the primary key. */
  const CouponUserModelIdentifier({required this.id});

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
  String toString() => 'CouponUserModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CouponUserModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
