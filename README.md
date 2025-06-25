
# Task 2: Data Insertion and Handling Nulls

## 📌 Objective
- Practice data insertion into a normalized schema.
- Handle missing values using `NULL` and `DEFAULT`.
- Apply `UPDATE` and `DELETE` to maintain clean data.

## ✅ What I Did Today

- Created a schema for an online retail database with tables: Customers, Products, Categories, Orders, and OrderItems.
- Inserted sample data, including examples with `NULL` values.
- Handled NULL stock in `Products` by updating it later.
- Deleted customer records with NULL emails to maintain data integrity.

## 🛠️ Tools Used
- Pg admin

## 🧪 SQL Operations

### 🟢 INSERT Examples
- Added 3 customers (1 with NULL email).
- Inserted 2 products (1 with NULL stock).
- Added categories, orders, and order items.

### 🔁 UPDATE Example
- Updated product stock from NULL to 30 where needed.

### ❌ DELETE Example
- Removed customer whose email was NULL.

## 📸 Screenshots
> Adding a Some Screenshot

---

**Delivered Files:**
- `task2_data.sql` – Complete SQL file with CREATE, INSERT, UPDATE, DELETE
- `README.md` – Documentation with what was done and why
