# Item Lookup – Description 2 Colum

## Overview
This customization extends the standard Microsoft Dynamics 365 Business Central Item Lookup page to display the existing Description 2 field immediately after Description. It improves item identification when users select items from the lookup list.

## Functional behavior
The Item Lookup list displays a new Description 2 column following Description. The column reads data from the standard Item record; no new table field or data migration is needed.

## Scope and limitations
This page extension affects the Item Lookup page only. It does not by itself add Description 2 to the inline Item No. dropdown on sales or purchase lines; that behavior requires a separate table fieldgroup extension. Visibility may also depend on page personalization and the lookup page used by a particular field.

# Query Report - Purchase Lines Audit

## Overview
This customization defines a read-only AL query that displays purchase order line details, creation timestamps, and user audit information. It is intended for operational review of purchase order lines in Business Central.

## Functional behavior
Only records whose Purchase Line Document Type is Order are included. Thus purchase invoice, quote and credit memo lines are excluded. The supplied query does not restrict Type to Item; it can therefore return other purchase order line types, including lines with blank Item No. values.

## Scope and limitations
- Current purchase order lines only: posted or deleted lines are not retained in Purchase Line for this query.
- Last Modified By is only the latest modifier, not the full change history.
- User Name is the account name, not necessarily the person’s Full Name.
- For Item lines only, add Type = const(Item) to DataItemTableFilter.
- For audit robustness, consider also displaying the raw GUIDs or a separate mechanism for users no longer in the User table.