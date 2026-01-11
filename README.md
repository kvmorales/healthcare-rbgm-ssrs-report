# CSR RBGM Utilisation Report

## Overview

This project showcases a production-style SQL Server Reporting Services (SSRS) dataset designed to track and audit RBGM consumable usage in a hospital environment.

The report delivers patient-level, department-level, and item-level utilisation data, supporting clinical auditing, inventory control, and compliance reporting.

## Business Problem
Hospitals require accurate reporting to:
- Monitor RBGM consumable usage across departments
- Validate rendered quantities against returns
- Support internal audits and compliance checks
- Provide flexible reporting by date range and item
- Manual tracking and poorly optimised queries introduce performance issues and reporting inaccuracies.

## Technical Solution
- Designed a JOIN-based, set-oriented T-SQL query
- Replaced scalar UDFs with relational joins for performance
- Implemented optional SSRS parameters
- Applied healthcare-specific business rules to ensure data accuracy
- Structured output for clinical and administrative readability

## Technologies Used
- SQL Server (T-SQL)
- SQL Server Reporting Services (SSRS)
- Healthcare Information Systems (HIS)
- Relational Database Design

## Key Report Fields
- Patient Name
- Age
- Item Code & Description
- Rendered Quantity
- Rendered Date
- Department

## Performance Optimisations
- Eliminated scalar UDFs (row-by-row execution)
- Used set-based JOINs for scalability
- Parameter-friendly logic for SSRS execution plans
- Clean ordering for report readability

## License
This project is licensed under the MIT License.
