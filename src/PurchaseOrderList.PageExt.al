pageextension 50100 ADWPurchaseOrderList extends "Purchase Order List"
{
    layout
    {
        addlast(content)
        {
            field("Outstanding Amount (LCY)"; rec."Outstanding Amount (LCY)")
            {
                ApplicationArea = all;
            }
        }
    }
}