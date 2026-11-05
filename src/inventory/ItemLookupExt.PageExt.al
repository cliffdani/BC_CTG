
pageextension 50100 "CTG Item Lookup Ext" extends "Item Lookup"
{
    layout
    {
        addafter(Description)
        {
            field("CTG Description 2"; Rec."Description 2")
            {
                ApplicationArea = All;
                Caption = 'Description 2';
                ToolTip = 'Specifies additional information about the item.';
            }

            field("CTG No. 2"; Rec."No. 2")
            {
                ApplicationArea = All;
                Caption = 'No 2';
                ToolTip = 'Specifies additional information about the item.';
            }
            field("CTGVendor Item No"; Rec."Vendor Item No.")
            {
                ApplicationArea = All;
                Caption = 'Vendor Item No.';
                ToolTip = 'Specifies additional information about the item.';
            }
            field("CTG Lead Time Calculation"; Rec."Lead Time Calculation")
            {
                ApplicationArea = All;
                Caption = 'Lead Time Calculation';
                ToolTip = 'Specifies additional information about the item.';
            }
        }
    }
}
