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


/** This is an auto generated class representing the Transaction type in your schema. */
class Transaction extends amplify_core.Model {
  static const classType = const _TransactionModelType();
  final String id;
  final amplify_core.TemporalDate? _FinishedDate;
  final ETpsOrMoney? _TpsOrMoney;
  final EInOrOut? _INOrOut;
  final int? _Value;
  final ETransactionStatus? _Status;
  final ETransactionType? _Type;
  final Project? _RProject;
  final Service? _RService;
  final Coupon? _RCoupon;
  final Promocode? _RPromocode;
  final Subscriptions? _RSubscriptions;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _transactionRProjectId;
  final String? _transactionRServiceId;
  final String? _transactionRCouponId;
  final String? _transactionRPromocodeId;
  final String? _transactionRSubscriptionsId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  TransactionModelIdentifier get modelIdentifier {
      return TransactionModelIdentifier(
        id: id
      );
  }
  
  amplify_core.TemporalDate? get FinishedDate {
    return _FinishedDate;
  }
  
  ETpsOrMoney get TpsOrMoney {
    try {
      return _TpsOrMoney!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  EInOrOut get INOrOut {
    try {
      return _INOrOut!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get Value {
    return _Value;
  }
  
  ETransactionStatus get Status {
    try {
      return _Status!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  ETransactionType get Type {
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
  
  Project? get RProject {
    return _RProject;
  }
  
  Service? get RService {
    return _RService;
  }
  
  Coupon? get RCoupon {
    return _RCoupon;
  }
  
  Promocode? get RPromocode {
    return _RPromocode;
  }
  
  Subscriptions? get RSubscriptions {
    return _RSubscriptions;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get transactionRProjectId {
    return _transactionRProjectId;
  }
  
  String? get transactionRServiceId {
    return _transactionRServiceId;
  }
  
  String? get transactionRCouponId {
    return _transactionRCouponId;
  }
  
  String? get transactionRPromocodeId {
    return _transactionRPromocodeId;
  }
  
  String? get transactionRSubscriptionsId {
    return _transactionRSubscriptionsId;
  }
  
  const Transaction._internal({required this.id, FinishedDate, required TpsOrMoney, required INOrOut, Value, required Status, required Type, RProject, RService, RCoupon, RPromocode, RSubscriptions, createdAt, updatedAt, transactionRProjectId, transactionRServiceId, transactionRCouponId, transactionRPromocodeId, transactionRSubscriptionsId}): _FinishedDate = FinishedDate, _TpsOrMoney = TpsOrMoney, _INOrOut = INOrOut, _Value = Value, _Status = Status, _Type = Type, _RProject = RProject, _RService = RService, _RCoupon = RCoupon, _RPromocode = RPromocode, _RSubscriptions = RSubscriptions, _createdAt = createdAt, _updatedAt = updatedAt, _transactionRProjectId = transactionRProjectId, _transactionRServiceId = transactionRServiceId, _transactionRCouponId = transactionRCouponId, _transactionRPromocodeId = transactionRPromocodeId, _transactionRSubscriptionsId = transactionRSubscriptionsId;
  
  factory Transaction({String? id, amplify_core.TemporalDate? FinishedDate, required ETpsOrMoney TpsOrMoney, required EInOrOut INOrOut, int? Value, required ETransactionStatus Status, required ETransactionType Type, Project? RProject, Service? RService, Coupon? RCoupon, Promocode? RPromocode, Subscriptions? RSubscriptions, String? transactionRProjectId, String? transactionRServiceId, String? transactionRCouponId, String? transactionRPromocodeId, String? transactionRSubscriptionsId}) {
    return Transaction._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      FinishedDate: FinishedDate,
      TpsOrMoney: TpsOrMoney,
      INOrOut: INOrOut,
      Value: Value,
      Status: Status,
      Type: Type,
      RProject: RProject,
      RService: RService,
      RCoupon: RCoupon,
      RPromocode: RPromocode,
      RSubscriptions: RSubscriptions,
      transactionRProjectId: transactionRProjectId,
      transactionRServiceId: transactionRServiceId,
      transactionRCouponId: transactionRCouponId,
      transactionRPromocodeId: transactionRPromocodeId,
      transactionRSubscriptionsId: transactionRSubscriptionsId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Transaction &&
      id == other.id &&
      _FinishedDate == other._FinishedDate &&
      _TpsOrMoney == other._TpsOrMoney &&
      _INOrOut == other._INOrOut &&
      _Value == other._Value &&
      _Status == other._Status &&
      _Type == other._Type &&
      _RProject == other._RProject &&
      _RService == other._RService &&
      _RCoupon == other._RCoupon &&
      _RPromocode == other._RPromocode &&
      _RSubscriptions == other._RSubscriptions &&
      _transactionRProjectId == other._transactionRProjectId &&
      _transactionRServiceId == other._transactionRServiceId &&
      _transactionRCouponId == other._transactionRCouponId &&
      _transactionRPromocodeId == other._transactionRPromocodeId &&
      _transactionRSubscriptionsId == other._transactionRSubscriptionsId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Transaction {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("FinishedDate=" + (_FinishedDate != null ? _FinishedDate!.format() : "null") + ", ");
    buffer.write("TpsOrMoney=" + (_TpsOrMoney != null ? amplify_core.enumToString(_TpsOrMoney)! : "null") + ", ");
    buffer.write("INOrOut=" + (_INOrOut != null ? amplify_core.enumToString(_INOrOut)! : "null") + ", ");
    buffer.write("Value=" + (_Value != null ? _Value!.toString() : "null") + ", ");
    buffer.write("Status=" + (_Status != null ? amplify_core.enumToString(_Status)! : "null") + ", ");
    buffer.write("Type=" + (_Type != null ? amplify_core.enumToString(_Type)! : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("transactionRProjectId=" + "$_transactionRProjectId" + ", ");
    buffer.write("transactionRServiceId=" + "$_transactionRServiceId" + ", ");
    buffer.write("transactionRCouponId=" + "$_transactionRCouponId" + ", ");
    buffer.write("transactionRPromocodeId=" + "$_transactionRPromocodeId" + ", ");
    buffer.write("transactionRSubscriptionsId=" + "$_transactionRSubscriptionsId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Transaction copyWith({amplify_core.TemporalDate? FinishedDate, ETpsOrMoney? TpsOrMoney, EInOrOut? INOrOut, int? Value, ETransactionStatus? Status, ETransactionType? Type, Project? RProject, Service? RService, Coupon? RCoupon, Promocode? RPromocode, Subscriptions? RSubscriptions, String? transactionRProjectId, String? transactionRServiceId, String? transactionRCouponId, String? transactionRPromocodeId, String? transactionRSubscriptionsId}) {
    return Transaction._internal(
      id: id,
      FinishedDate: FinishedDate ?? this.FinishedDate,
      TpsOrMoney: TpsOrMoney ?? this.TpsOrMoney,
      INOrOut: INOrOut ?? this.INOrOut,
      Value: Value ?? this.Value,
      Status: Status ?? this.Status,
      Type: Type ?? this.Type,
      RProject: RProject ?? this.RProject,
      RService: RService ?? this.RService,
      RCoupon: RCoupon ?? this.RCoupon,
      RPromocode: RPromocode ?? this.RPromocode,
      RSubscriptions: RSubscriptions ?? this.RSubscriptions,
      transactionRProjectId: transactionRProjectId ?? this.transactionRProjectId,
      transactionRServiceId: transactionRServiceId ?? this.transactionRServiceId,
      transactionRCouponId: transactionRCouponId ?? this.transactionRCouponId,
      transactionRPromocodeId: transactionRPromocodeId ?? this.transactionRPromocodeId,
      transactionRSubscriptionsId: transactionRSubscriptionsId ?? this.transactionRSubscriptionsId);
  }
  
  Transaction copyWithModelFieldValues({
    ModelFieldValue<amplify_core.TemporalDate?>? FinishedDate,
    ModelFieldValue<ETpsOrMoney>? TpsOrMoney,
    ModelFieldValue<EInOrOut>? INOrOut,
    ModelFieldValue<int?>? Value,
    ModelFieldValue<ETransactionStatus>? Status,
    ModelFieldValue<ETransactionType>? Type,
    ModelFieldValue<Project?>? RProject,
    ModelFieldValue<Service?>? RService,
    ModelFieldValue<Coupon?>? RCoupon,
    ModelFieldValue<Promocode?>? RPromocode,
    ModelFieldValue<Subscriptions?>? RSubscriptions,
    ModelFieldValue<String?>? transactionRProjectId,
    ModelFieldValue<String?>? transactionRServiceId,
    ModelFieldValue<String?>? transactionRCouponId,
    ModelFieldValue<String?>? transactionRPromocodeId,
    ModelFieldValue<String?>? transactionRSubscriptionsId
  }) {
    return Transaction._internal(
      id: id,
      FinishedDate: FinishedDate == null ? this.FinishedDate : FinishedDate.value,
      TpsOrMoney: TpsOrMoney == null ? this.TpsOrMoney : TpsOrMoney.value,
      INOrOut: INOrOut == null ? this.INOrOut : INOrOut.value,
      Value: Value == null ? this.Value : Value.value,
      Status: Status == null ? this.Status : Status.value,
      Type: Type == null ? this.Type : Type.value,
      RProject: RProject == null ? this.RProject : RProject.value,
      RService: RService == null ? this.RService : RService.value,
      RCoupon: RCoupon == null ? this.RCoupon : RCoupon.value,
      RPromocode: RPromocode == null ? this.RPromocode : RPromocode.value,
      RSubscriptions: RSubscriptions == null ? this.RSubscriptions : RSubscriptions.value,
      transactionRProjectId: transactionRProjectId == null ? this.transactionRProjectId : transactionRProjectId.value,
      transactionRServiceId: transactionRServiceId == null ? this.transactionRServiceId : transactionRServiceId.value,
      transactionRCouponId: transactionRCouponId == null ? this.transactionRCouponId : transactionRCouponId.value,
      transactionRPromocodeId: transactionRPromocodeId == null ? this.transactionRPromocodeId : transactionRPromocodeId.value,
      transactionRSubscriptionsId: transactionRSubscriptionsId == null ? this.transactionRSubscriptionsId : transactionRSubscriptionsId.value
    );
  }
  
  Transaction.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _FinishedDate = json['FinishedDate'] != null ? amplify_core.TemporalDate.fromString(json['FinishedDate']) : null,
      _TpsOrMoney = amplify_core.enumFromString<ETpsOrMoney>(json['TpsOrMoney'], ETpsOrMoney.values),
      _INOrOut = amplify_core.enumFromString<EInOrOut>(json['INOrOut'], EInOrOut.values),
      _Value = (json['Value'] as num?)?.toInt(),
      _Status = amplify_core.enumFromString<ETransactionStatus>(json['Status'], ETransactionStatus.values),
      _Type = amplify_core.enumFromString<ETransactionType>(json['Type'], ETransactionType.values),
      _RProject = json['RProject']?['serializedData'] != null
        ? Project.fromJson(new Map<String, dynamic>.from(json['RProject']['serializedData']))
        : null,
      _RService = json['RService']?['serializedData'] != null
        ? Service.fromJson(new Map<String, dynamic>.from(json['RService']['serializedData']))
        : null,
      _RCoupon = json['RCoupon']?['serializedData'] != null
        ? Coupon.fromJson(new Map<String, dynamic>.from(json['RCoupon']['serializedData']))
        : null,
      _RPromocode = json['RPromocode']?['serializedData'] != null
        ? Promocode.fromJson(new Map<String, dynamic>.from(json['RPromocode']['serializedData']))
        : null,
      _RSubscriptions = json['RSubscriptions']?['serializedData'] != null
        ? Subscriptions.fromJson(new Map<String, dynamic>.from(json['RSubscriptions']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _transactionRProjectId = json['transactionRProjectId'],
      _transactionRServiceId = json['transactionRServiceId'],
      _transactionRCouponId = json['transactionRCouponId'],
      _transactionRPromocodeId = json['transactionRPromocodeId'],
      _transactionRSubscriptionsId = json['transactionRSubscriptionsId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'FinishedDate': _FinishedDate?.format(), 'TpsOrMoney': amplify_core.enumToString(_TpsOrMoney), 'INOrOut': amplify_core.enumToString(_INOrOut), 'Value': _Value, 'Status': amplify_core.enumToString(_Status), 'Type': amplify_core.enumToString(_Type), 'RProject': _RProject?.toJson(), 'RService': _RService?.toJson(), 'RCoupon': _RCoupon?.toJson(), 'RPromocode': _RPromocode?.toJson(), 'RSubscriptions': _RSubscriptions?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'transactionRProjectId': _transactionRProjectId, 'transactionRServiceId': _transactionRServiceId, 'transactionRCouponId': _transactionRCouponId, 'transactionRPromocodeId': _transactionRPromocodeId, 'transactionRSubscriptionsId': _transactionRSubscriptionsId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'FinishedDate': _FinishedDate,
    'TpsOrMoney': _TpsOrMoney,
    'INOrOut': _INOrOut,
    'Value': _Value,
    'Status': _Status,
    'Type': _Type,
    'RProject': _RProject,
    'RService': _RService,
    'RCoupon': _RCoupon,
    'RPromocode': _RPromocode,
    'RSubscriptions': _RSubscriptions,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'transactionRProjectId': _transactionRProjectId,
    'transactionRServiceId': _transactionRServiceId,
    'transactionRCouponId': _transactionRCouponId,
    'transactionRPromocodeId': _transactionRPromocodeId,
    'transactionRSubscriptionsId': _transactionRSubscriptionsId
  };

  static final amplify_core.QueryModelIdentifier<TransactionModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<TransactionModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final FINISHEDDATE = amplify_core.QueryField(fieldName: "FinishedDate");
  static final TPSORMONEY = amplify_core.QueryField(fieldName: "TpsOrMoney");
  static final INOROUT = amplify_core.QueryField(fieldName: "INOrOut");
  static final VALUE = amplify_core.QueryField(fieldName: "Value");
  static final STATUS = amplify_core.QueryField(fieldName: "Status");
  static final TYPE = amplify_core.QueryField(fieldName: "Type");
  static final RPROJECT = amplify_core.QueryField(
    fieldName: "RProject",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Project'));
  static final RSERVICE = amplify_core.QueryField(
    fieldName: "RService",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Service'));
  static final RCOUPON = amplify_core.QueryField(
    fieldName: "RCoupon",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Coupon'));
  static final RPROMOCODE = amplify_core.QueryField(
    fieldName: "RPromocode",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Promocode'));
  static final RSUBSCRIPTIONS = amplify_core.QueryField(
    fieldName: "RSubscriptions",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Subscriptions'));
  static final TRANSACTIONRPROJECTID = amplify_core.QueryField(fieldName: "transactionRProjectId");
  static final TRANSACTIONRSERVICEID = amplify_core.QueryField(fieldName: "transactionRServiceId");
  static final TRANSACTIONRCOUPONID = amplify_core.QueryField(fieldName: "transactionRCouponId");
  static final TRANSACTIONRPROMOCODEID = amplify_core.QueryField(fieldName: "transactionRPromocodeId");
  static final TRANSACTIONRSUBSCRIPTIONSID = amplify_core.QueryField(fieldName: "transactionRSubscriptionsId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Transaction";
    modelSchemaDefinition.pluralName = "Transactions";
    
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
      key: Transaction.FINISHEDDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.date)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.TPSORMONEY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.INOROUT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.VALUE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.STATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.TYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Transaction.RPROJECT,
      isRequired: false,
      ofModelName: 'Project',
      associatedKey: Project.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Transaction.RSERVICE,
      isRequired: false,
      ofModelName: 'Service',
      associatedKey: Service.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Transaction.RCOUPON,
      isRequired: false,
      ofModelName: 'Coupon',
      associatedKey: Coupon.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Transaction.RPROMOCODE,
      isRequired: false,
      ofModelName: 'Promocode',
      associatedKey: Promocode.ID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Transaction.RSUBSCRIPTIONS,
      isRequired: false,
      ofModelName: 'Subscriptions',
      associatedKey: Subscriptions.ID
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
      key: Transaction.TRANSACTIONRPROJECTID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.TRANSACTIONRSERVICEID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.TRANSACTIONRCOUPONID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.TRANSACTIONRPROMOCODEID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Transaction.TRANSACTIONRSUBSCRIPTIONSID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _TransactionModelType extends amplify_core.ModelType<Transaction> {
  const _TransactionModelType();
  
  @override
  Transaction fromJson(Map<String, dynamic> jsonData) {
    return Transaction.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Transaction';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Transaction] in your schema.
 */
class TransactionModelIdentifier implements amplify_core.ModelIdentifier<Transaction> {
  final String id;

  /** Create an instance of TransactionModelIdentifier using [id] the primary key. */
  const TransactionModelIdentifier({
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
  String toString() => 'TransactionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is TransactionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}