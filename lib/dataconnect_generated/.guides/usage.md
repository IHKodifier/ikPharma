# Basic Usage

```dart
IkPharmaConnectorConnector.instance.CreateProduct(createProductVariables).execute();
IkPharmaConnectorConnector.instance.ListAllLocations().execute();
IkPharmaConnectorConnector.instance.ListPricingByLocation(listPricingByLocationVariables).execute();
IkPharmaConnectorConnector.instance.listAllProducts().execute();
IkPharmaConnectorConnector.instance.ListProductsByBusiness(listProductsByBusinessVariables).execute();
IkPharmaConnectorConnector.instance.ListAllSuppliers().execute();
IkPharmaConnectorConnector.instance.CreateCustomer(createCustomerVariables).execute();
IkPharmaConnectorConnector.instance.CreateLocation(createLocationVariables).execute();
IkPharmaConnectorConnector.instance.ListLocationsByBusiness(listLocationsByBusinessVariables).execute();
IkPharmaConnectorConnector.instance.ListInventoryByLocation(listInventoryByLocationVariables).execute();

```

## Optional Fields

Some operations may have optional fields. In these cases, the Flutter SDK exposes a builder method, and will have to be set separately.

Optional fields can be discovered based on classes that have `Optional` object types.

This is an example of a mutation with an optional field:

```dart
await IkPharmaConnectorConnector.instance.CreateTherapeuticClass({ ... })
.description(...)
.execute();
```

Note: the above example is a mutation, but the same logic applies to query operations as well. Additionally, `createMovie` is an example, and may not be available to the user.

