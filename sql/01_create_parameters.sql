/*
===============================================================================
 File:        01_create_parameters.sql
 Project:     NHS Healthcare RBGM Utilisation Report
 Purpose:     Document SSRS dataset parameters and expected behaviour
 Author:      Kent Vincent Morales
===============================================================================

NOTE:
This script is for DOCUMENTATION and PORTFOLIO purposes.

In SQL Server Reporting Services (SSRS), parameters are created at the
REPORT level, not physically in SQL Server. This file defines:

- Parameter names
- Expected data types
- Default values
- Business logic usage

===============================================================================
*/

/*
-----------------------------------
Parameter: @startDate
-----------------------------------
Description:
Start date for rendered RBGM items.

SSRS Configuration:
- Data Type: Date/Time
- Prompt: Rendered Date From
- Required: Yes
- Default Value: =Today() - 30
*/
DECLARE @startDate DATE;


/*
-----------------------------------
Parameter: @endDate
-----------------------------------
Description:
End date for rendered RBGM items.

SSRS Configuration:
- Data Type: Date/Time
- Prompt: Rendered Date To
- Required: Yes
- Default Value: =Today()
*/
DECLARE @endDate DATE;


/*
-----------------------------------
Parameter: @RBGMItem
-----------------------------------
Description:
Optional filter for RBGM consumable item code.
Allows users to either:
- Select a specific RBGM item
- Leave blank to return all predefined RBGM items

SSRS Configuration:
- Data Type: Text
- Prompt: Item
- Required: No
- Default Value: '' (empty string)
- Available Values: Dataset-driven dropdown
*/
DECLARE @RBGMItem VARCHAR(50);


/*
===============================================================================
Parameter Behaviour Summary
===============================================================================

1. Date filtering:
   Records are filtered using:
   CAST(rendate AS DATE) BETWEEN @startDate AND @endDate

2. Optional item logic:
   - If @RBGMItem is provided:
       Filter on selected item only
   - If @RBGMItem is empty:
       Include all RBGM-related item codes

This approach ensures:
- Flexible analytics
- SSRS execution plan stability
- NHS audit-friendly reproducibility

===============================================================================
*/
