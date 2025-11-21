# ik_pharma SDK

## Installation
```sh
flutter pub get firebase_data_connect
flutterfire configure
```
For more information, see [Flutter for Firebase installation documentation](https://firebase.google.com/docs/data-connect/flutter-sdk#use-core).

## Data Connect instance
Each connector creates a static class, with an instance of the `DataConnect` class that can be used to connect to your Data Connect backend and call operations.

### Connecting to the emulator

```dart
String host = 'localhost'; // or your host name
int port = 9399; // or your port number
DefaultConnector.instance.dataConnect.useDataConnectEmulator(host, port);
```

You can also call queries and mutations by using the connector class.
## Queries

### ListLocationsByBusiness
#### Required Arguments
```dart
String businessId = ...;
DefaultConnector.instance.listLocationsByBusiness(
  businessId: businessId,
).execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListLocationsByBusinessData, ListLocationsByBusinessVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listLocationsByBusiness(
  businessId: businessId,
);
ListLocationsByBusinessData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;

final ref = DefaultConnector.instance.listLocationsByBusiness(
  businessId: businessId,
).ref();
ref.execute();

ref.subscribe(...);
```


### ListPricingByLocation
#### Required Arguments
```dart
String businessId = ...;
DefaultConnector.instance.listPricingByLocation(
  businessId: businessId,
).execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListPricingByLocationData, ListPricingByLocationVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listPricingByLocation(
  businessId: businessId,
);
ListPricingByLocationData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;

final ref = DefaultConnector.instance.listPricingByLocation(
  businessId: businessId,
).ref();
ref.execute();

ref.subscribe(...);
```


### ListInventoryByLocation
#### Required Arguments
```dart
String locationId = ...;
DefaultConnector.instance.listInventoryByLocation(
  locationId: locationId,
).execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListInventoryByLocationData, ListInventoryByLocationVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listInventoryByLocation(
  locationId: locationId,
);
ListInventoryByLocationData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String locationId = ...;

final ref = DefaultConnector.instance.listInventoryByLocation(
  locationId: locationId,
).ref();
ref.execute();

ref.subscribe(...);
```


### ListAllLocations
#### Required Arguments
```dart
// No required arguments
DefaultConnector.instance.listAllLocations().execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListAllLocationsData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listAllLocations();
ListAllLocationsData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = DefaultConnector.instance.listAllLocations().ref();
ref.execute();

ref.subscribe(...);
```


### listAllProducts
#### Required Arguments
```dart
// No required arguments
DefaultConnector.instance.listAllProducts().execute();
```



#### Return Type
`execute()` returns a `QueryResult<listAllProductsData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listAllProducts();
listAllProductsData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = DefaultConnector.instance.listAllProducts().ref();
ref.execute();

ref.subscribe(...);
```


### ListAllBusinesses
#### Required Arguments
```dart
// No required arguments
DefaultConnector.instance.listAllBusinesses().execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListAllBusinessesData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listAllBusinesses();
ListAllBusinessesData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = DefaultConnector.instance.listAllBusinesses().ref();
ref.execute();

ref.subscribe(...);
```


### ListAllCustomers
#### Required Arguments
```dart
// No required arguments
DefaultConnector.instance.listAllCustomers().execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListAllCustomersData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listAllCustomers();
ListAllCustomersData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = DefaultConnector.instance.listAllCustomers().ref();
ref.execute();

ref.subscribe(...);
```


### ListAllSuppliers
#### Required Arguments
```dart
// No required arguments
DefaultConnector.instance.listAllSuppliers().execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListAllSuppliersData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listAllSuppliers();
ListAllSuppliersData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = DefaultConnector.instance.listAllSuppliers().ref();
ref.execute();

ref.subscribe(...);
```


### GetBusinessById
#### Required Arguments
```dart
String id = ...;
DefaultConnector.instance.getBusinessById(
  id: id,
).execute();
```



#### Return Type
`execute()` returns a `QueryResult<GetBusinessByIdData, GetBusinessByIdVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.getBusinessById(
  id: id,
);
GetBusinessByIdData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String id = ...;

final ref = DefaultConnector.instance.getBusinessById(
  id: id,
).ref();
ref.execute();

ref.subscribe(...);
```


### ListProductsByBusiness
#### Required Arguments
```dart
String businessId = ...;
DefaultConnector.instance.listProductsByBusiness(
  businessId: businessId,
).execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListProductsByBusinessData, ListProductsByBusinessVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await DefaultConnector.instance.listProductsByBusiness(
  businessId: businessId,
);
ListProductsByBusinessData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;

final ref = DefaultConnector.instance.listProductsByBusiness(
  businessId: businessId,
).ref();
ref.execute();

ref.subscribe(...);
```

## Mutations

### CreateUser
#### Required Arguments
```dart
String id = ...;
String businessId = ...;
String email = ...;
String firstName = ...;
String lastName = ...;
UserRole role = ...;
DefaultConnector.instance.createUser(
  id: id,
  businessId: businessId,
  email: email,
  firstName: firstName,
  lastName: lastName,
  role: role,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateUser, we created `CreateUserBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateUserVariablesBuilder {
  ...
   CreateUserVariablesBuilder phone(String? t) {
   _phone.value = t;
   return this;
  }
  CreateUserVariablesBuilder permissions(List<String>? t) {
   _permissions.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createUser(
  id: id,
  businessId: businessId,
  email: email,
  firstName: firstName,
  lastName: lastName,
  role: role,
)
.phone(phone)
.permissions(permissions)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateUserData, CreateUserVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createUser(
  id: id,
  businessId: businessId,
  email: email,
  firstName: firstName,
  lastName: lastName,
  role: role,
);
CreateUserData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String id = ...;
String businessId = ...;
String email = ...;
String firstName = ...;
String lastName = ...;
UserRole role = ...;

final ref = DefaultConnector.instance.createUser(
  id: id,
  businessId: businessId,
  email: email,
  firstName: firstName,
  lastName: lastName,
  role: role,
).ref();
ref.execute();
```


### CreateGoodsReceipt
#### Required Arguments
```dart
String purchaseOrderId = ...;
String businessId = ...;
String receiptNumber = ...;
GoodsReceiptStatus status = ...;
String inspectedById = ...;
DefaultConnector.instance.createGoodsReceipt(
  purchaseOrderId: purchaseOrderId,
  businessId: businessId,
  receiptNumber: receiptNumber,
  status: status,
  inspectedById: inspectedById,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateGoodsReceipt, we created `CreateGoodsReceiptBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateGoodsReceiptVariablesBuilder {
  ...
   CreateGoodsReceiptVariablesBuilder receiptDate(Timestamp? t) {
   _receiptDate.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createGoodsReceipt(
  purchaseOrderId: purchaseOrderId,
  businessId: businessId,
  receiptNumber: receiptNumber,
  status: status,
  inspectedById: inspectedById,
)
.receiptDate(receiptDate)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateGoodsReceiptData, CreateGoodsReceiptVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createGoodsReceipt(
  purchaseOrderId: purchaseOrderId,
  businessId: businessId,
  receiptNumber: receiptNumber,
  status: status,
  inspectedById: inspectedById,
);
CreateGoodsReceiptData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String purchaseOrderId = ...;
String businessId = ...;
String receiptNumber = ...;
GoodsReceiptStatus status = ...;
String inspectedById = ...;

final ref = DefaultConnector.instance.createGoodsReceipt(
  purchaseOrderId: purchaseOrderId,
  businessId: businessId,
  receiptNumber: receiptNumber,
  status: status,
  inspectedById: inspectedById,
).ref();
ref.execute();
```


### CreateSupplier
#### Required Arguments
```dart
String businessId = ...;
String name = ...;
SupplierType type = ...;
String paymentTerms = ...;
SupplierTier tier = ...;
DefaultConnector.instance.createSupplier(
  businessId: businessId,
  name: name,
  type: type,
  paymentTerms: paymentTerms,
  tier: tier,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateSupplier, we created `CreateSupplierBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateSupplierVariablesBuilder {
  ...
   CreateSupplierVariablesBuilder contactPerson(String? t) {
   _contactPerson.value = t;
   return this;
  }
  CreateSupplierVariablesBuilder email(String? t) {
   _email.value = t;
   return this;
  }
  CreateSupplierVariablesBuilder phone(String? t) {
   _phone.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createSupplier(
  businessId: businessId,
  name: name,
  type: type,
  paymentTerms: paymentTerms,
  tier: tier,
)
.contactPerson(contactPerson)
.email(email)
.phone(phone)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateSupplierData, CreateSupplierVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createSupplier(
  businessId: businessId,
  name: name,
  type: type,
  paymentTerms: paymentTerms,
  tier: tier,
);
CreateSupplierData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;
String name = ...;
SupplierType type = ...;
String paymentTerms = ...;
SupplierTier tier = ...;

final ref = DefaultConnector.instance.createSupplier(
  businessId: businessId,
  name: name,
  type: type,
  paymentTerms: paymentTerms,
  tier: tier,
).ref();
ref.execute();
```


### CreateBusiness
#### Required Arguments
```dart
String name = ...;
BusinessTier tier = ...;
DateTime subscriptionStartDate = ...;
DefaultConnector.instance.createBusiness(
  name: name,
  tier: tier,
  subscriptionStartDate: subscriptionStartDate,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateBusiness, we created `CreateBusinessBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateBusinessVariablesBuilder {
  ...
   CreateBusinessVariablesBuilder subscriptionEndDate(DateTime? t) {
   _subscriptionEndDate.value = t;
   return this;
  }
  CreateBusinessVariablesBuilder maxUsers(int? t) {
   _maxUsers.value = t;
   return this;
  }
  CreateBusinessVariablesBuilder maxLocations(int? t) {
   _maxLocations.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createBusiness(
  name: name,
  tier: tier,
  subscriptionStartDate: subscriptionStartDate,
)
.subscriptionEndDate(subscriptionEndDate)
.maxUsers(maxUsers)
.maxLocations(maxLocations)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateBusinessData, CreateBusinessVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createBusiness(
  name: name,
  tier: tier,
  subscriptionStartDate: subscriptionStartDate,
);
CreateBusinessData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String name = ...;
BusinessTier tier = ...;
DateTime subscriptionStartDate = ...;

final ref = DefaultConnector.instance.createBusiness(
  name: name,
  tier: tier,
  subscriptionStartDate: subscriptionStartDate,
).ref();
ref.execute();
```


### CreateManufacturer
#### Required Arguments
```dart
String name = ...;
String country = ...;
DefaultConnector.instance.createManufacturer(
  name: name,
  country: country,
).execute();
```



#### Return Type
`execute()` returns a `OperationResult<CreateManufacturerData, CreateManufacturerVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createManufacturer(
  name: name,
  country: country,
);
CreateManufacturerData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String name = ...;
String country = ...;

final ref = DefaultConnector.instance.createManufacturer(
  name: name,
  country: country,
).ref();
ref.execute();
```


### DeleteAllData
#### Required Arguments
```dart
// No required arguments
DefaultConnector.instance.deleteAllData().execute();
```



#### Return Type
`execute()` returns a `OperationResult<DeleteAllDataData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.deleteAllData();
DeleteAllDataData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = DefaultConnector.instance.deleteAllData().ref();
ref.execute();
```


### CreateLocation
#### Required Arguments
```dart
String businessId = ...;
String name = ...;
String code = ...;
LocationType type = ...;
DefaultConnector.instance.createLocation(
  businessId: businessId,
  name: name,
  code: code,
  type: type,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateLocation, we created `CreateLocationBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateLocationVariablesBuilder {
  ...
   CreateLocationVariablesBuilder phone(String? t) {
   _phone.value = t;
   return this;
  }
  CreateLocationVariablesBuilder email(String? t) {
   _email.value = t;
   return this;
  }
  CreateLocationVariablesBuilder operatingHours(String? t) {
   _operatingHours.value = t;
   return this;
  }
  CreateLocationVariablesBuilder licenseNumber(String? t) {
   _licenseNumber.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createLocation(
  businessId: businessId,
  name: name,
  code: code,
  type: type,
)
.phone(phone)
.email(email)
.operatingHours(operatingHours)
.licenseNumber(licenseNumber)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateLocationData, CreateLocationVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createLocation(
  businessId: businessId,
  name: name,
  code: code,
  type: type,
);
CreateLocationData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;
String name = ...;
String code = ...;
LocationType type = ...;

final ref = DefaultConnector.instance.createLocation(
  businessId: businessId,
  name: name,
  code: code,
  type: type,
).ref();
ref.execute();
```


### CreateProductPricing
#### Required Arguments
```dart
String productId = ...;
String businessId = ...;
double wholesaleCost = ...;
double retailPrice = ...;
double walkInPrice = ...;
double grossMarginPercent = ...;
double markupPercent = ...;
double taxRate = ...;
DateTime effectiveDate = ...;
String updatedById = ...;
DefaultConnector.instance.createProductPricing(
  productId: productId,
  businessId: businessId,
  wholesaleCost: wholesaleCost,
  retailPrice: retailPrice,
  walkInPrice: walkInPrice,
  grossMarginPercent: grossMarginPercent,
  markupPercent: markupPercent,
  taxRate: taxRate,
  effectiveDate: effectiveDate,
  updatedById: updatedById,
).execute();
```



#### Return Type
`execute()` returns a `OperationResult<CreateProductPricingData, CreateProductPricingVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createProductPricing(
  productId: productId,
  businessId: businessId,
  wholesaleCost: wholesaleCost,
  retailPrice: retailPrice,
  walkInPrice: walkInPrice,
  grossMarginPercent: grossMarginPercent,
  markupPercent: markupPercent,
  taxRate: taxRate,
  effectiveDate: effectiveDate,
  updatedById: updatedById,
);
CreateProductPricingData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String productId = ...;
String businessId = ...;
double wholesaleCost = ...;
double retailPrice = ...;
double walkInPrice = ...;
double grossMarginPercent = ...;
double markupPercent = ...;
double taxRate = ...;
DateTime effectiveDate = ...;
String updatedById = ...;

final ref = DefaultConnector.instance.createProductPricing(
  productId: productId,
  businessId: businessId,
  wholesaleCost: wholesaleCost,
  retailPrice: retailPrice,
  walkInPrice: walkInPrice,
  grossMarginPercent: grossMarginPercent,
  markupPercent: markupPercent,
  taxRate: taxRate,
  effectiveDate: effectiveDate,
  updatedById: updatedById,
).ref();
ref.execute();
```


### createDummyProduct
#### Required Arguments
```dart
// No required arguments
DefaultConnector.instance.createDummyProduct().execute();
```



#### Return Type
`execute()` returns a `OperationResult<createDummyProductData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createDummyProduct();
createDummyProductData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = DefaultConnector.instance.createDummyProduct().ref();
ref.execute();
```


### CreatePurchaseOrder
#### Required Arguments
```dart
String businessId = ...;
String supplierId = ...;
String orderNumber = ...;
double totalAmount = ...;
double subtotal = ...;
double taxAmount = ...;
PurchaseOrderStatus status = ...;
String createdById = ...;
DefaultConnector.instance.createPurchaseOrder(
  businessId: businessId,
  supplierId: supplierId,
  orderNumber: orderNumber,
  totalAmount: totalAmount,
  subtotal: subtotal,
  taxAmount: taxAmount,
  status: status,
  createdById: createdById,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreatePurchaseOrder, we created `CreatePurchaseOrderBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreatePurchaseOrderVariablesBuilder {
  ...
   CreatePurchaseOrderVariablesBuilder orderDate(Timestamp? t) {
   _orderDate.value = t;
   return this;
  }
  CreatePurchaseOrderVariablesBuilder expectedDeliveryDate(DateTime? t) {
   _expectedDeliveryDate.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createPurchaseOrder(
  businessId: businessId,
  supplierId: supplierId,
  orderNumber: orderNumber,
  totalAmount: totalAmount,
  subtotal: subtotal,
  taxAmount: taxAmount,
  status: status,
  createdById: createdById,
)
.orderDate(orderDate)
.expectedDeliveryDate(expectedDeliveryDate)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreatePurchaseOrderData, CreatePurchaseOrderVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createPurchaseOrder(
  businessId: businessId,
  supplierId: supplierId,
  orderNumber: orderNumber,
  totalAmount: totalAmount,
  subtotal: subtotal,
  taxAmount: taxAmount,
  status: status,
  createdById: createdById,
);
CreatePurchaseOrderData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;
String supplierId = ...;
String orderNumber = ...;
double totalAmount = ...;
double subtotal = ...;
double taxAmount = ...;
PurchaseOrderStatus status = ...;
String createdById = ...;

final ref = DefaultConnector.instance.createPurchaseOrder(
  businessId: businessId,
  supplierId: supplierId,
  orderNumber: orderNumber,
  totalAmount: totalAmount,
  subtotal: subtotal,
  taxAmount: taxAmount,
  status: status,
  createdById: createdById,
).ref();
ref.execute();
```


### CreateInventoryLevel
#### Required Arguments
```dart
String productId = ...;
String locationId = ...;
String businessId = ...;
int quantityOnHand = ...;
int quantityAvailable = ...;
double averageCost = ...;
double totalValue = ...;
DefaultConnector.instance.createInventoryLevel(
  productId: productId,
  locationId: locationId,
  businessId: businessId,
  quantityOnHand: quantityOnHand,
  quantityAvailable: quantityAvailable,
  averageCost: averageCost,
  totalValue: totalValue,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateInventoryLevel, we created `CreateInventoryLevelBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateInventoryLevelVariablesBuilder {
  ...
   CreateInventoryLevelVariablesBuilder batchId(String? t) {
   _batchId.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createInventoryLevel(
  productId: productId,
  locationId: locationId,
  businessId: businessId,
  quantityOnHand: quantityOnHand,
  quantityAvailable: quantityAvailable,
  averageCost: averageCost,
  totalValue: totalValue,
)
.batchId(batchId)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateInventoryLevelData, CreateInventoryLevelVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createInventoryLevel(
  productId: productId,
  locationId: locationId,
  businessId: businessId,
  quantityOnHand: quantityOnHand,
  quantityAvailable: quantityAvailable,
  averageCost: averageCost,
  totalValue: totalValue,
);
CreateInventoryLevelData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String productId = ...;
String locationId = ...;
String businessId = ...;
int quantityOnHand = ...;
int quantityAvailable = ...;
double averageCost = ...;
double totalValue = ...;

final ref = DefaultConnector.instance.createInventoryLevel(
  productId: productId,
  locationId: locationId,
  businessId: businessId,
  quantityOnHand: quantityOnHand,
  quantityAvailable: quantityAvailable,
  averageCost: averageCost,
  totalValue: totalValue,
).ref();
ref.execute();
```


### CreateProductBatch
#### Required Arguments
```dart
String productId = ...;
String businessId = ...;
String batchNumber = ...;
String lotNumber = ...;
DateTime manufacturingDate = ...;
DateTime expiryDate = ...;
String supplierId = ...;
String goodsReceiptId = ...;
DateTime receivedDate = ...;
double unitCost = ...;
double totalCost = ...;
int totalQuantity = ...;
int quantityRemaining = ...;
String locationId = ...;
String createdById = ...;
String updatedById = ...;
DefaultConnector.instance.createProductBatch(
  productId: productId,
  businessId: businessId,
  batchNumber: batchNumber,
  lotNumber: lotNumber,
  manufacturingDate: manufacturingDate,
  expiryDate: expiryDate,
  supplierId: supplierId,
  goodsReceiptId: goodsReceiptId,
  receivedDate: receivedDate,
  unitCost: unitCost,
  totalCost: totalCost,
  totalQuantity: totalQuantity,
  quantityRemaining: quantityRemaining,
  locationId: locationId,
  createdById: createdById,
  updatedById: updatedById,
).execute();
```



#### Return Type
`execute()` returns a `OperationResult<CreateProductBatchData, CreateProductBatchVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createProductBatch(
  productId: productId,
  businessId: businessId,
  batchNumber: batchNumber,
  lotNumber: lotNumber,
  manufacturingDate: manufacturingDate,
  expiryDate: expiryDate,
  supplierId: supplierId,
  goodsReceiptId: goodsReceiptId,
  receivedDate: receivedDate,
  unitCost: unitCost,
  totalCost: totalCost,
  totalQuantity: totalQuantity,
  quantityRemaining: quantityRemaining,
  locationId: locationId,
  createdById: createdById,
  updatedById: updatedById,
);
CreateProductBatchData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String productId = ...;
String businessId = ...;
String batchNumber = ...;
String lotNumber = ...;
DateTime manufacturingDate = ...;
DateTime expiryDate = ...;
String supplierId = ...;
String goodsReceiptId = ...;
DateTime receivedDate = ...;
double unitCost = ...;
double totalCost = ...;
int totalQuantity = ...;
int quantityRemaining = ...;
String locationId = ...;
String createdById = ...;
String updatedById = ...;

final ref = DefaultConnector.instance.createProductBatch(
  productId: productId,
  businessId: businessId,
  batchNumber: batchNumber,
  lotNumber: lotNumber,
  manufacturingDate: manufacturingDate,
  expiryDate: expiryDate,
  supplierId: supplierId,
  goodsReceiptId: goodsReceiptId,
  receivedDate: receivedDate,
  unitCost: unitCost,
  totalCost: totalCost,
  totalQuantity: totalQuantity,
  quantityRemaining: quantityRemaining,
  locationId: locationId,
  createdById: createdById,
  updatedById: updatedById,
).ref();
ref.execute();
```


### CreateTherapeuticClass
#### Required Arguments
```dart
String code = ...;
String name = ...;
DefaultConnector.instance.createTherapeuticClass(
  code: code,
  name: name,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateTherapeuticClass, we created `CreateTherapeuticClassBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateTherapeuticClassVariablesBuilder {
  ...
   CreateTherapeuticClassVariablesBuilder description(String? t) {
   _description.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createTherapeuticClass(
  code: code,
  name: name,
)
.description(description)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateTherapeuticClassData, CreateTherapeuticClassVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createTherapeuticClass(
  code: code,
  name: name,
);
CreateTherapeuticClassData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String code = ...;
String name = ...;

final ref = DefaultConnector.instance.createTherapeuticClass(
  code: code,
  name: name,
).ref();
ref.execute();
```


### CreateCustomer
#### Required Arguments
```dart
String businessId = ...;
String firstName = ...;
String lastName = ...;
String createdById = ...;
DefaultConnector.instance.createCustomer(
  businessId: businessId,
  firstName: firstName,
  lastName: lastName,
  createdById: createdById,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateCustomer, we created `CreateCustomerBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateCustomerVariablesBuilder {
  ...
   CreateCustomerVariablesBuilder email(String? t) {
   _email.value = t;
   return this;
  }
  CreateCustomerVariablesBuilder phone(String? t) {
   _phone.value = t;
   return this;
  }
  CreateCustomerVariablesBuilder dateOfBirth(DateTime? t) {
   _dateOfBirth.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createCustomer(
  businessId: businessId,
  firstName: firstName,
  lastName: lastName,
  createdById: createdById,
)
.email(email)
.phone(phone)
.dateOfBirth(dateOfBirth)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateCustomerData, CreateCustomerVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createCustomer(
  businessId: businessId,
  firstName: firstName,
  lastName: lastName,
  createdById: createdById,
);
CreateCustomerData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;
String firstName = ...;
String lastName = ...;
String createdById = ...;

final ref = DefaultConnector.instance.createCustomer(
  businessId: businessId,
  firstName: firstName,
  lastName: lastName,
  createdById: createdById,
).ref();
ref.execute();
```


### CreateProduct
#### Required Arguments
```dart
String businessId = ...;
String genericName = ...;
String manufacturerId = ...;
String internalSKU = ...;
DosageForm dosageForm = ...;
String strength = ...;
String unit = ...;
RouteOfAdministration routeOfAdministration = ...;
DrugSchedule drugSchedule = ...;
bool requiresPrescription = ...;
String therapeuticClassId = ...;
int packageSize = ...;
PackageUnit packageUnit = ...;
String primarySupplierId = ...;
int leadTimeDays = ...;
int reorderPoint = ...;
int reorderQuantity = ...;
int minimumStockLevel = ...;
ProductCategory category = ...;
String createdById = ...;
String updatedById = ...;
DefaultConnector.instance.createProduct(
  businessId: businessId,
  genericName: genericName,
  manufacturerId: manufacturerId,
  internalSKU: internalSKU,
  dosageForm: dosageForm,
  strength: strength,
  unit: unit,
  routeOfAdministration: routeOfAdministration,
  drugSchedule: drugSchedule,
  requiresPrescription: requiresPrescription,
  therapeuticClassId: therapeuticClassId,
  packageSize: packageSize,
  packageUnit: packageUnit,
  primarySupplierId: primarySupplierId,
  leadTimeDays: leadTimeDays,
  reorderPoint: reorderPoint,
  reorderQuantity: reorderQuantity,
  minimumStockLevel: minimumStockLevel,
  category: category,
  createdById: createdById,
  updatedById: updatedById,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateProduct, we created `CreateProductBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateProductVariablesBuilder {
  ...
   CreateProductVariablesBuilder brandName(String? t) {
   _brandName.value = t;
   return this;
  }
  CreateProductVariablesBuilder nationalDrugCode(String? t) {
   _nationalDrugCode.value = t;
   return this;
  }
  CreateProductVariablesBuilder barcode(String? t) {
   _barcode.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createProduct(
  businessId: businessId,
  genericName: genericName,
  manufacturerId: manufacturerId,
  internalSKU: internalSKU,
  dosageForm: dosageForm,
  strength: strength,
  unit: unit,
  routeOfAdministration: routeOfAdministration,
  drugSchedule: drugSchedule,
  requiresPrescription: requiresPrescription,
  therapeuticClassId: therapeuticClassId,
  packageSize: packageSize,
  packageUnit: packageUnit,
  primarySupplierId: primarySupplierId,
  leadTimeDays: leadTimeDays,
  reorderPoint: reorderPoint,
  reorderQuantity: reorderQuantity,
  minimumStockLevel: minimumStockLevel,
  category: category,
  createdById: createdById,
  updatedById: updatedById,
)
.brandName(brandName)
.nationalDrugCode(nationalDrugCode)
.barcode(barcode)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateProductData, CreateProductVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createProduct(
  businessId: businessId,
  genericName: genericName,
  manufacturerId: manufacturerId,
  internalSKU: internalSKU,
  dosageForm: dosageForm,
  strength: strength,
  unit: unit,
  routeOfAdministration: routeOfAdministration,
  drugSchedule: drugSchedule,
  requiresPrescription: requiresPrescription,
  therapeuticClassId: therapeuticClassId,
  packageSize: packageSize,
  packageUnit: packageUnit,
  primarySupplierId: primarySupplierId,
  leadTimeDays: leadTimeDays,
  reorderPoint: reorderPoint,
  reorderQuantity: reorderQuantity,
  minimumStockLevel: minimumStockLevel,
  category: category,
  createdById: createdById,
  updatedById: updatedById,
);
CreateProductData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String businessId = ...;
String genericName = ...;
String manufacturerId = ...;
String internalSKU = ...;
DosageForm dosageForm = ...;
String strength = ...;
String unit = ...;
RouteOfAdministration routeOfAdministration = ...;
DrugSchedule drugSchedule = ...;
bool requiresPrescription = ...;
String therapeuticClassId = ...;
int packageSize = ...;
PackageUnit packageUnit = ...;
String primarySupplierId = ...;
int leadTimeDays = ...;
int reorderPoint = ...;
int reorderQuantity = ...;
int minimumStockLevel = ...;
ProductCategory category = ...;
String createdById = ...;
String updatedById = ...;

final ref = DefaultConnector.instance.createProduct(
  businessId: businessId,
  genericName: genericName,
  manufacturerId: manufacturerId,
  internalSKU: internalSKU,
  dosageForm: dosageForm,
  strength: strength,
  unit: unit,
  routeOfAdministration: routeOfAdministration,
  drugSchedule: drugSchedule,
  requiresPrescription: requiresPrescription,
  therapeuticClassId: therapeuticClassId,
  packageSize: packageSize,
  packageUnit: packageUnit,
  primarySupplierId: primarySupplierId,
  leadTimeDays: leadTimeDays,
  reorderPoint: reorderPoint,
  reorderQuantity: reorderQuantity,
  minimumStockLevel: minimumStockLevel,
  category: category,
  createdById: createdById,
  updatedById: updatedById,
).ref();
ref.execute();
```


### CreateAddress
#### Required Arguments
```dart
String line1 = ...;
String city = ...;
String state = ...;
String postalCode = ...;
String country = ...;
DefaultConnector.instance.createAddress(
  line1: line1,
  city: city,
  state: state,
  postalCode: postalCode,
  country: country,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateAddress, we created `CreateAddressBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateAddressVariablesBuilder {
  ...
   CreateAddressVariablesBuilder line2(String? t) {
   _line2.value = t;
   return this;
  }

  ...
}
DefaultConnector.instance.createAddress(
  line1: line1,
  city: city,
  state: state,
  postalCode: postalCode,
  country: country,
)
.line2(line2)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateAddressData, CreateAddressVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await DefaultConnector.instance.createAddress(
  line1: line1,
  city: city,
  state: state,
  postalCode: postalCode,
  country: country,
);
CreateAddressData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String line1 = ...;
String city = ...;
String state = ...;
String postalCode = ...;
String country = ...;

final ref = DefaultConnector.instance.createAddress(
  line1: line1,
  city: city,
  state: state,
  postalCode: postalCode,
  country: country,
).ref();
ref.execute();
```

