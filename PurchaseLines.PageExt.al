pageextension 50101 ADWPurchaseLines extends "Purchase Lines"
{
    layout
    {
        addlast(Control1)
        {
            field("Line Amount (LCY)"; Rec.LineAmountLCY)
            {
                ApplicationArea = all;
            }
        }
    }


}