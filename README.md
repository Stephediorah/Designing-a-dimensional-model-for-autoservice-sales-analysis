# Designing-a-dimensional-model-for-autoservice-sales-analysis and sql queries

INTRODUCTION

Data modeling is the process of creating a conceptual representation of data to be used in a
database or information system. It involves defining the data elements, relationships, and
constraints necessary for the system. In essence, it's about organizing data into a structured
format that is easily understandable and accessible.

ER Diagram and Data Model Documentation for Auto Shop Sales Analysis

![ER Model for autoservice workshop](https://github.com/user-attachments/assets/ac491525-ecdb-4bfc-a752-5e2a27879d76)

Note this ER Model could be different for other sales analysis

Core Components of a Dimensional Model

A typical dimensional model consists of:
● Fact Table: Stores numerical measurements and foreign keys referencing dimension
tables.
● Dimension Tables: Contain descriptive attributes about the dimensions and provide
context to the facts.

Fact tables:

Auto shop data warehouse;
● SalesID: Unique identifier for each sale.
● CustomerID: References Customer table.
● VehicleID: References Vehicle table.
● ServiceID: References Service table.
● PartID: References Part table.
● LocationID: References Location table.
● DateID: References Date table.
● ServiceHours: Number of hours spent on the service.
● ServiceCharge: Charge for the service.
● PartsCharge: Charge for the parts used.
● Subtotal: Subtotal amount (ServiceCharge + PartsCharge).
● SalesTaxRate: Sales tax rate applied.
● SalesTaxAmount: Amount of sales tax collected.
● TotalAmount: Total amount including sales tax.

Dimension tables:

Customer Table:
● CustomerID: Unique identifier for each customer.
● CustomerName: Name of the customer.
● CustomerAddress: Address of the customer.
● CustomerPhone: Contact number of the customer.

Vehicle Table:

● VehicleID: Unique identifier for each vehicle.
● Make: Make of the vehicle.
● Model: Model of the vehicle.
● Year: Year of the vehicle.
● Color: Color of the vehicle.
● VIN: Vehicle Identification Number, unique for each vehicle.
● RegistrationNo: Registration number of the vehicle.
● Mileage: Mileage of the vehicle

Service Table:

● ServiceID: Unique identifier for each service.
● ServiceType: Type of service performed.
● ServiceDesc: Description of the service.
● ServiceRate: Rate per hour for the service.

Part Table:

● PartID: Unique identifier for each part.
● PartNumber: Unique part number.
● PartName: Name of the part.
● UnitPrice: Price per unit of the part.
● Quantity: The number of units of the part used in a particular sale or service.
● Amount: The total cost of the part used in a particular sale or service, calculated as
Quantity * UnitPrice.

Location Table:

● LocationID: Unique identifier for each location.
● LocationName: Name of the location.
● LocationAddress: Address of the location.

Date Table:

● DateID: Unique identifier for each date entry.
● FullDate: Full date (YYYY-MM-DD).
● Day: Day of the month.
● Month: Month of the year.
● Quarter: Quarter of the year.
● Year: Year.
● DayOfWeek: Name of the day of the week.
● MonthName: Name of the month
