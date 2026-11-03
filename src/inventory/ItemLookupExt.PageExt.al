
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
        }
    }
}
