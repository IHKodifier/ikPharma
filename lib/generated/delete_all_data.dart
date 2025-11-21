part of 'default.dart';

class DeleteAllDataVariablesBuilder {
  
  final FirebaseDataConnect _dataConnect;
  DeleteAllDataVariablesBuilder(this._dataConnect, );
  Deserializer<DeleteAllDataData> dataDeserializer = (dynamic json)  => DeleteAllDataData.fromJson(jsonDecode(json));
  
  Future<OperationResult<DeleteAllDataData, void>> execute() {
    return ref().execute();
  }

  MutationRef<DeleteAllDataData, void> ref() {
    
    return _dataConnect.mutation("DeleteAllData", dataDeserializer, emptySerializer, null);
  }
}

@immutable
class DeleteAllDataData {
  final int deleteSalesLineItems;
  final int deletePayments;
  final int deleteSalesTransactions;
  final int deleteTemperatureReadings;
  final int deleteRecallDetails;
  final int deleteProductBatches;
  final int deleteInventoryLevels;
  final int deleteStorageLocations;
  final int deleteProductSuppliers;
  final int deleteActiveIngredients;
  final int deleteProducts;
  final int deleteGoodsReceipts;
  final int deletePurchaseOrderLineItems;
  final int deletePurchaseOrders;
  final int deletePurchaseRequisitions;
  final int deleteReorderSuggestions;
  final int deleteSeasonalPatterns;
  final int deleteProductPricing;
  final int deleteInsuranceReimbursements;
  final int deleteVolumeDiscounts;
  final int deletePromotionalDiscounts;
  final int deleteSupplierPerformanceScores;
  final int deleteSuppliers;
  final int deleteCustomers;
  final int deletePayrolls;
  final int deleteAttendances;
  final int deleteShifts;
  final int deleteEmployees;
  final int deleteInvoices;
  final int deleteFinancialRecords;
  final int deleteMessageReadReceipts;
  final int deleteMessageAttachments;
  final int deleteMessages;
  final int deleteConversations;
  final int deleteFormularyStatuses;
  final int deleteSubstitutionRules;
  final int deleteExpiryWarningThresholds;
  final int deleteBulkPackaging;
  final int deleteTemperatureRanges;
  final int deleteDimensions;
  final int deleteDrugInteractions;
  final int deleteTherapeuticSubclasses;
  final int deleteTherapeuticClasses;
  final int deleteLocations;
  final int deleteUsers;
  final int deleteManufacturers;
  final int deleteDateRanges;
  final int deleteAddresses;
  final int deleteBusinesses;
  DeleteAllDataData.fromJson(dynamic json):
  
  deleteSalesLineItems = nativeFromJson<int>(json['deleteSalesLineItems']),
  deletePayments = nativeFromJson<int>(json['deletePayments']),
  deleteSalesTransactions = nativeFromJson<int>(json['deleteSalesTransactions']),
  deleteTemperatureReadings = nativeFromJson<int>(json['deleteTemperatureReadings']),
  deleteRecallDetails = nativeFromJson<int>(json['deleteRecallDetails']),
  deleteProductBatches = nativeFromJson<int>(json['deleteProductBatches']),
  deleteInventoryLevels = nativeFromJson<int>(json['deleteInventoryLevels']),
  deleteStorageLocations = nativeFromJson<int>(json['deleteStorageLocations']),
  deleteProductSuppliers = nativeFromJson<int>(json['deleteProductSuppliers']),
  deleteActiveIngredients = nativeFromJson<int>(json['deleteActiveIngredients']),
  deleteProducts = nativeFromJson<int>(json['deleteProducts']),
  deleteGoodsReceipts = nativeFromJson<int>(json['deleteGoodsReceipts']),
  deletePurchaseOrderLineItems = nativeFromJson<int>(json['deletePurchaseOrderLineItems']),
  deletePurchaseOrders = nativeFromJson<int>(json['deletePurchaseOrders']),
  deletePurchaseRequisitions = nativeFromJson<int>(json['deletePurchaseRequisitions']),
  deleteReorderSuggestions = nativeFromJson<int>(json['deleteReorderSuggestions']),
  deleteSeasonalPatterns = nativeFromJson<int>(json['deleteSeasonalPatterns']),
  deleteProductPricing = nativeFromJson<int>(json['deleteProductPricing']),
  deleteInsuranceReimbursements = nativeFromJson<int>(json['deleteInsuranceReimbursements']),
  deleteVolumeDiscounts = nativeFromJson<int>(json['deleteVolumeDiscounts']),
  deletePromotionalDiscounts = nativeFromJson<int>(json['deletePromotionalDiscounts']),
  deleteSupplierPerformanceScores = nativeFromJson<int>(json['deleteSupplierPerformanceScores']),
  deleteSuppliers = nativeFromJson<int>(json['deleteSuppliers']),
  deleteCustomers = nativeFromJson<int>(json['deleteCustomers']),
  deletePayrolls = nativeFromJson<int>(json['deletePayrolls']),
  deleteAttendances = nativeFromJson<int>(json['deleteAttendances']),
  deleteShifts = nativeFromJson<int>(json['deleteShifts']),
  deleteEmployees = nativeFromJson<int>(json['deleteEmployees']),
  deleteInvoices = nativeFromJson<int>(json['deleteInvoices']),
  deleteFinancialRecords = nativeFromJson<int>(json['deleteFinancialRecords']),
  deleteMessageReadReceipts = nativeFromJson<int>(json['deleteMessageReadReceipts']),
  deleteMessageAttachments = nativeFromJson<int>(json['deleteMessageAttachments']),
  deleteMessages = nativeFromJson<int>(json['deleteMessages']),
  deleteConversations = nativeFromJson<int>(json['deleteConversations']),
  deleteFormularyStatuses = nativeFromJson<int>(json['deleteFormularyStatuses']),
  deleteSubstitutionRules = nativeFromJson<int>(json['deleteSubstitutionRules']),
  deleteExpiryWarningThresholds = nativeFromJson<int>(json['deleteExpiryWarningThresholds']),
  deleteBulkPackaging = nativeFromJson<int>(json['deleteBulkPackaging']),
  deleteTemperatureRanges = nativeFromJson<int>(json['deleteTemperatureRanges']),
  deleteDimensions = nativeFromJson<int>(json['deleteDimensions']),
  deleteDrugInteractions = nativeFromJson<int>(json['deleteDrugInteractions']),
  deleteTherapeuticSubclasses = nativeFromJson<int>(json['deleteTherapeuticSubclasses']),
  deleteTherapeuticClasses = nativeFromJson<int>(json['deleteTherapeuticClasses']),
  deleteLocations = nativeFromJson<int>(json['deleteLocations']),
  deleteUsers = nativeFromJson<int>(json['deleteUsers']),
  deleteManufacturers = nativeFromJson<int>(json['deleteManufacturers']),
  deleteDateRanges = nativeFromJson<int>(json['deleteDateRanges']),
  deleteAddresses = nativeFromJson<int>(json['deleteAddresses']),
  deleteBusinesses = nativeFromJson<int>(json['deleteBusinesses']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final DeleteAllDataData otherTyped = other as DeleteAllDataData;
    return deleteSalesLineItems == otherTyped.deleteSalesLineItems && 
    deletePayments == otherTyped.deletePayments && 
    deleteSalesTransactions == otherTyped.deleteSalesTransactions && 
    deleteTemperatureReadings == otherTyped.deleteTemperatureReadings && 
    deleteRecallDetails == otherTyped.deleteRecallDetails && 
    deleteProductBatches == otherTyped.deleteProductBatches && 
    deleteInventoryLevels == otherTyped.deleteInventoryLevels && 
    deleteStorageLocations == otherTyped.deleteStorageLocations && 
    deleteProductSuppliers == otherTyped.deleteProductSuppliers && 
    deleteActiveIngredients == otherTyped.deleteActiveIngredients && 
    deleteProducts == otherTyped.deleteProducts && 
    deleteGoodsReceipts == otherTyped.deleteGoodsReceipts && 
    deletePurchaseOrderLineItems == otherTyped.deletePurchaseOrderLineItems && 
    deletePurchaseOrders == otherTyped.deletePurchaseOrders && 
    deletePurchaseRequisitions == otherTyped.deletePurchaseRequisitions && 
    deleteReorderSuggestions == otherTyped.deleteReorderSuggestions && 
    deleteSeasonalPatterns == otherTyped.deleteSeasonalPatterns && 
    deleteProductPricing == otherTyped.deleteProductPricing && 
    deleteInsuranceReimbursements == otherTyped.deleteInsuranceReimbursements && 
    deleteVolumeDiscounts == otherTyped.deleteVolumeDiscounts && 
    deletePromotionalDiscounts == otherTyped.deletePromotionalDiscounts && 
    deleteSupplierPerformanceScores == otherTyped.deleteSupplierPerformanceScores && 
    deleteSuppliers == otherTyped.deleteSuppliers && 
    deleteCustomers == otherTyped.deleteCustomers && 
    deletePayrolls == otherTyped.deletePayrolls && 
    deleteAttendances == otherTyped.deleteAttendances && 
    deleteShifts == otherTyped.deleteShifts && 
    deleteEmployees == otherTyped.deleteEmployees && 
    deleteInvoices == otherTyped.deleteInvoices && 
    deleteFinancialRecords == otherTyped.deleteFinancialRecords && 
    deleteMessageReadReceipts == otherTyped.deleteMessageReadReceipts && 
    deleteMessageAttachments == otherTyped.deleteMessageAttachments && 
    deleteMessages == otherTyped.deleteMessages && 
    deleteConversations == otherTyped.deleteConversations && 
    deleteFormularyStatuses == otherTyped.deleteFormularyStatuses && 
    deleteSubstitutionRules == otherTyped.deleteSubstitutionRules && 
    deleteExpiryWarningThresholds == otherTyped.deleteExpiryWarningThresholds && 
    deleteBulkPackaging == otherTyped.deleteBulkPackaging && 
    deleteTemperatureRanges == otherTyped.deleteTemperatureRanges && 
    deleteDimensions == otherTyped.deleteDimensions && 
    deleteDrugInteractions == otherTyped.deleteDrugInteractions && 
    deleteTherapeuticSubclasses == otherTyped.deleteTherapeuticSubclasses && 
    deleteTherapeuticClasses == otherTyped.deleteTherapeuticClasses && 
    deleteLocations == otherTyped.deleteLocations && 
    deleteUsers == otherTyped.deleteUsers && 
    deleteManufacturers == otherTyped.deleteManufacturers && 
    deleteDateRanges == otherTyped.deleteDateRanges && 
    deleteAddresses == otherTyped.deleteAddresses && 
    deleteBusinesses == otherTyped.deleteBusinesses;
    
  }
  @override
  int get hashCode => Object.hashAll([deleteSalesLineItems.hashCode, deletePayments.hashCode, deleteSalesTransactions.hashCode, deleteTemperatureReadings.hashCode, deleteRecallDetails.hashCode, deleteProductBatches.hashCode, deleteInventoryLevels.hashCode, deleteStorageLocations.hashCode, deleteProductSuppliers.hashCode, deleteActiveIngredients.hashCode, deleteProducts.hashCode, deleteGoodsReceipts.hashCode, deletePurchaseOrderLineItems.hashCode, deletePurchaseOrders.hashCode, deletePurchaseRequisitions.hashCode, deleteReorderSuggestions.hashCode, deleteSeasonalPatterns.hashCode, deleteProductPricing.hashCode, deleteInsuranceReimbursements.hashCode, deleteVolumeDiscounts.hashCode, deletePromotionalDiscounts.hashCode, deleteSupplierPerformanceScores.hashCode, deleteSuppliers.hashCode, deleteCustomers.hashCode, deletePayrolls.hashCode, deleteAttendances.hashCode, deleteShifts.hashCode, deleteEmployees.hashCode, deleteInvoices.hashCode, deleteFinancialRecords.hashCode, deleteMessageReadReceipts.hashCode, deleteMessageAttachments.hashCode, deleteMessages.hashCode, deleteConversations.hashCode, deleteFormularyStatuses.hashCode, deleteSubstitutionRules.hashCode, deleteExpiryWarningThresholds.hashCode, deleteBulkPackaging.hashCode, deleteTemperatureRanges.hashCode, deleteDimensions.hashCode, deleteDrugInteractions.hashCode, deleteTherapeuticSubclasses.hashCode, deleteTherapeuticClasses.hashCode, deleteLocations.hashCode, deleteUsers.hashCode, deleteManufacturers.hashCode, deleteDateRanges.hashCode, deleteAddresses.hashCode, deleteBusinesses.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['deleteSalesLineItems'] = nativeToJson<int>(deleteSalesLineItems);
    json['deletePayments'] = nativeToJson<int>(deletePayments);
    json['deleteSalesTransactions'] = nativeToJson<int>(deleteSalesTransactions);
    json['deleteTemperatureReadings'] = nativeToJson<int>(deleteTemperatureReadings);
    json['deleteRecallDetails'] = nativeToJson<int>(deleteRecallDetails);
    json['deleteProductBatches'] = nativeToJson<int>(deleteProductBatches);
    json['deleteInventoryLevels'] = nativeToJson<int>(deleteInventoryLevels);
    json['deleteStorageLocations'] = nativeToJson<int>(deleteStorageLocations);
    json['deleteProductSuppliers'] = nativeToJson<int>(deleteProductSuppliers);
    json['deleteActiveIngredients'] = nativeToJson<int>(deleteActiveIngredients);
    json['deleteProducts'] = nativeToJson<int>(deleteProducts);
    json['deleteGoodsReceipts'] = nativeToJson<int>(deleteGoodsReceipts);
    json['deletePurchaseOrderLineItems'] = nativeToJson<int>(deletePurchaseOrderLineItems);
    json['deletePurchaseOrders'] = nativeToJson<int>(deletePurchaseOrders);
    json['deletePurchaseRequisitions'] = nativeToJson<int>(deletePurchaseRequisitions);
    json['deleteReorderSuggestions'] = nativeToJson<int>(deleteReorderSuggestions);
    json['deleteSeasonalPatterns'] = nativeToJson<int>(deleteSeasonalPatterns);
    json['deleteProductPricing'] = nativeToJson<int>(deleteProductPricing);
    json['deleteInsuranceReimbursements'] = nativeToJson<int>(deleteInsuranceReimbursements);
    json['deleteVolumeDiscounts'] = nativeToJson<int>(deleteVolumeDiscounts);
    json['deletePromotionalDiscounts'] = nativeToJson<int>(deletePromotionalDiscounts);
    json['deleteSupplierPerformanceScores'] = nativeToJson<int>(deleteSupplierPerformanceScores);
    json['deleteSuppliers'] = nativeToJson<int>(deleteSuppliers);
    json['deleteCustomers'] = nativeToJson<int>(deleteCustomers);
    json['deletePayrolls'] = nativeToJson<int>(deletePayrolls);
    json['deleteAttendances'] = nativeToJson<int>(deleteAttendances);
    json['deleteShifts'] = nativeToJson<int>(deleteShifts);
    json['deleteEmployees'] = nativeToJson<int>(deleteEmployees);
    json['deleteInvoices'] = nativeToJson<int>(deleteInvoices);
    json['deleteFinancialRecords'] = nativeToJson<int>(deleteFinancialRecords);
    json['deleteMessageReadReceipts'] = nativeToJson<int>(deleteMessageReadReceipts);
    json['deleteMessageAttachments'] = nativeToJson<int>(deleteMessageAttachments);
    json['deleteMessages'] = nativeToJson<int>(deleteMessages);
    json['deleteConversations'] = nativeToJson<int>(deleteConversations);
    json['deleteFormularyStatuses'] = nativeToJson<int>(deleteFormularyStatuses);
    json['deleteSubstitutionRules'] = nativeToJson<int>(deleteSubstitutionRules);
    json['deleteExpiryWarningThresholds'] = nativeToJson<int>(deleteExpiryWarningThresholds);
    json['deleteBulkPackaging'] = nativeToJson<int>(deleteBulkPackaging);
    json['deleteTemperatureRanges'] = nativeToJson<int>(deleteTemperatureRanges);
    json['deleteDimensions'] = nativeToJson<int>(deleteDimensions);
    json['deleteDrugInteractions'] = nativeToJson<int>(deleteDrugInteractions);
    json['deleteTherapeuticSubclasses'] = nativeToJson<int>(deleteTherapeuticSubclasses);
    json['deleteTherapeuticClasses'] = nativeToJson<int>(deleteTherapeuticClasses);
    json['deleteLocations'] = nativeToJson<int>(deleteLocations);
    json['deleteUsers'] = nativeToJson<int>(deleteUsers);
    json['deleteManufacturers'] = nativeToJson<int>(deleteManufacturers);
    json['deleteDateRanges'] = nativeToJson<int>(deleteDateRanges);
    json['deleteAddresses'] = nativeToJson<int>(deleteAddresses);
    json['deleteBusinesses'] = nativeToJson<int>(deleteBusinesses);
    return json;
  }

  DeleteAllDataData({
    required this.deleteSalesLineItems,
    required this.deletePayments,
    required this.deleteSalesTransactions,
    required this.deleteTemperatureReadings,
    required this.deleteRecallDetails,
    required this.deleteProductBatches,
    required this.deleteInventoryLevels,
    required this.deleteStorageLocations,
    required this.deleteProductSuppliers,
    required this.deleteActiveIngredients,
    required this.deleteProducts,
    required this.deleteGoodsReceipts,
    required this.deletePurchaseOrderLineItems,
    required this.deletePurchaseOrders,
    required this.deletePurchaseRequisitions,
    required this.deleteReorderSuggestions,
    required this.deleteSeasonalPatterns,
    required this.deleteProductPricing,
    required this.deleteInsuranceReimbursements,
    required this.deleteVolumeDiscounts,
    required this.deletePromotionalDiscounts,
    required this.deleteSupplierPerformanceScores,
    required this.deleteSuppliers,
    required this.deleteCustomers,
    required this.deletePayrolls,
    required this.deleteAttendances,
    required this.deleteShifts,
    required this.deleteEmployees,
    required this.deleteInvoices,
    required this.deleteFinancialRecords,
    required this.deleteMessageReadReceipts,
    required this.deleteMessageAttachments,
    required this.deleteMessages,
    required this.deleteConversations,
    required this.deleteFormularyStatuses,
    required this.deleteSubstitutionRules,
    required this.deleteExpiryWarningThresholds,
    required this.deleteBulkPackaging,
    required this.deleteTemperatureRanges,
    required this.deleteDimensions,
    required this.deleteDrugInteractions,
    required this.deleteTherapeuticSubclasses,
    required this.deleteTherapeuticClasses,
    required this.deleteLocations,
    required this.deleteUsers,
    required this.deleteManufacturers,
    required this.deleteDateRanges,
    required this.deleteAddresses,
    required this.deleteBusinesses,
  });
}

