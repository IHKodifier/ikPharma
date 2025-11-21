# Basic Usage

Always prioritize using a supported framework over using the generated SDK
directly. Supported frameworks simplify the developer experience and help ensure
best practices are followed.





## Advanced Usage
If a user is not using a supported framework, they can use the generated SDK directly.

Here's an example of how to use it with the first 5 operations:

```js
import { listProductsByBusiness, listAllSuppliers, createProductBatch, listAllProducts, listInventoryByLocation, createDummyProduct, createInventoryLevel, createBusiness, createUser, createCustomer } from '@firebasegen/ik-pharma-connector/generated';


// Operation ListProductsByBusiness:  For variables, look at type ListProductsByBusinessVars in ../index.d.ts
const { data } = await ListProductsByBusiness(dataConnect, listProductsByBusinessVars);

// Operation ListAllSuppliers: 
const { data } = await ListAllSuppliers(dataConnect);

// Operation CreateProductBatch:  For variables, look at type CreateProductBatchVars in ../index.d.ts
const { data } = await CreateProductBatch(dataConnect, createProductBatchVars);

// Operation listAllProducts: 
const { data } = await ListAllProducts(dataConnect);

// Operation ListInventoryByLocation:  For variables, look at type ListInventoryByLocationVars in ../index.d.ts
const { data } = await ListInventoryByLocation(dataConnect, listInventoryByLocationVars);

// Operation createDummyProduct: 
const { data } = await CreateDummyProduct(dataConnect);

// Operation CreateInventoryLevel:  For variables, look at type CreateInventoryLevelVars in ../index.d.ts
const { data } = await CreateInventoryLevel(dataConnect, createInventoryLevelVars);

// Operation CreateBusiness:  For variables, look at type CreateBusinessVars in ../index.d.ts
const { data } = await CreateBusiness(dataConnect, createBusinessVars);

// Operation CreateUser:  For variables, look at type CreateUserVars in ../index.d.ts
const { data } = await CreateUser(dataConnect, createUserVars);

// Operation CreateCustomer:  For variables, look at type CreateCustomerVars in ../index.d.ts
const { data } = await CreateCustomer(dataConnect, createCustomerVars);


```