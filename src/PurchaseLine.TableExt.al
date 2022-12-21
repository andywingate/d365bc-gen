tableextension 50102 ADWPurchaseLineTable extends "Purchase Line"
{
    fields
    {
        field(50101; "Line Amount (LCY)"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Line Amount (LCY)';

            trigger OnValidate()
            var
                LineAmountLCY: Decimal;
            begin
                LineAmountLCY := Round(Quantity * "Unit Cost (LCY)", 2);
            end;
        }

    }


}