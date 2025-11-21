# Basic Usage

```dart
DefaultConnector.instance.CreateUser(createUserVariables).execute();
DefaultConnector.instance.CreateGoodsReceipt(createGoodsReceiptVariables).execute();
DefaultConnector.instance.CreateSupplier(createSupplierVariables).execute();
DefaultConnector.instance.ListLocationsByBusiness(listLocationsByBusinessVariables).execute();
DefaultConnector.instance.ListPricingByLocation(listPricingByLocationVariables).execute();
DefaultConnector.instance.ListInventoryByLocation(listInventoryByLocationVariables).execute();
DefaultConnector.instance.CreateBusiness(createBusinessVariables).execute();
DefaultConnector.instance.CreateManufacturer(createManufacturerVariables).execute();
DefaultConnector.instance.DeleteAllData().execute();
DefaultConnector.instance.CreateLocation(createLocationVariables).execute();

```

## Optional Fields

Some operations may have optional fields. In these cases, the Flutter SDK exposes a builder method, and will have to be set separately.

Optional fields can be discovered based on classes that have `Optional` object types.

This is an example of a mutation with an optional field:

```dart
await DefaultConnector.instance.CreateAddress({ ... })
.line2(...)
.execute();
```

Note: the above example is a mutation, but the same logic applies to query operations as well. Additionally, `createMovie` is an example, and may not be available to the user.

