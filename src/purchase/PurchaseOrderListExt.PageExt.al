
pageextension 50102 "CTG Purchase Order List Ext"
    extends "Purchase Order List"
{
    actions
    {
        addlast(Reporting)
        {
            action(CTGPurchaseLineAudit)
            {
                ApplicationArea = All;
                Caption = 'CTG Purchase Line Audit';
                ToolTip = 'View purchase order line audit details, including creation and modification information.';
                Image = Report;

                RunObject = query "CTG Purchase Line Audit";
            }
        }
    }
}
