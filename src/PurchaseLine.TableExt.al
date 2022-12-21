tableextension 50102 ADWPurchaseLineTable extends "Purchase Line"
{
    fields
    {
        field(50101; LineAmountLCY; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            Caption = 'Line Amount (LCY)';
            Editable = false;

        }

        modify("Unit Cost (LCY)")
        {
            trigger OnAfterValidate()
            begin
                LineAmountLCY := "Unit Cost (LCY)" * Quantity;
            end;
        }

        modify(Quantity)
        {
            trigger OnAfterValidate()
            begin
                LineAmountLCY := "Unit Cost (LCY)" * Quantity;
            end;
        }
    }

}