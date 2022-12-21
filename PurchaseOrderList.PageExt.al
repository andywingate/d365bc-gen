pageextension 50100 ADWPurchaseOrderList extends "Purchase Order List"
{
    layout
    {
        addlast(Control1)
        {
            field("Amount (LCY)"; rec."Amount (LCY)")
            {
                ApplicationArea = all;
            }
        }
    }
}