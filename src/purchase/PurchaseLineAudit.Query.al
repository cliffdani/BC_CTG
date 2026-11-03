
query 50100 "CTG Purchase Line Audit"
{
    Caption = 'CTG Purchase Line Audit';
    QueryType = Normal;
    QueryCategory = 'Purchase Order List';
    UsageCategory = ReportsAndAnalysis;

    elements
    {
        dataitem(PurchLine; "Purchase Line")
        {
            DataItemTableFilter =
                "Document Type" = const(Order);


            column(PurchaseOrderNo; "Document No.")
            {
                Caption = 'Purchase Order No.';
            }

            column(PurchaseLineNo; "Line No.")
            {
                Caption = 'Line No.';
            }

            column(ItemNo; "No.")
            {
                Caption = 'Item No.';
            }

            column(Location_Code; "Location Code")
            {
                Caption = 'Location Code';
            }

            column(ItemDescription; Description)
            {
                Caption = 'Description';
            }

            column(Quantity; Quantity)
            {
                Caption = 'Quantity';
            }

            column(CreationDateTime; SystemCreatedAt)
            {
                Caption = 'Creation Date/Time';
            }

            column(LastModifiedDateTime; SystemModifiedAt)
            {
                Caption = 'Last Modified Date/Time';
            }

            // SystemCreatedBy/SystemModifiedBy store the User Security ID (GUID),
            // so join the User table to resolve them to user names.
            dataitem(CreatedByUser; User)
            {
                DataItemLink = "User Security ID" = PurchLine.SystemCreatedBy;
                SqlJoinType = LeftOuterJoin;

                column(CreatedByUserID; "User Name")
                {
                    Caption = 'Created By - User ID';
                }

                dataitem(ModifiedByUser; User)
                {
                    DataItemLink = "User Security ID" = PurchLine.SystemModifiedBy;
                    SqlJoinType = LeftOuterJoin;

                    column(LastModifiedByUserID; "User Name")
                    {
                        Caption = 'Last Modified By - User ID';
                    }
                }
            }
        }
    }
}
