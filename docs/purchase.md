# Item Lookup – Description 2 Colum

## Overview

This customization extends the standard Microsoft Dynamics 365 Business Central Item Lookup page to display the existing Description 2 field immediately after Description. It improves item identification when users select items from the lookup list.

## Functional behavior

The Item Lookup list displays a new Description 2 column following Description. The column reads data from the standard Item record; no new table field or data migration is needed.

## Scope and limitations

This page extension affects the Item Lookup page only. It does not by itself add Description 2 to the inline Item No. dropdown on sales or purchase lines; that behavior requires a separate table fieldgroup extension. Visibility may also depend on page personalization and the lookup page used by a particular field.