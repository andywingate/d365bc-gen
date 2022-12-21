tableextension 50101 ADWPurchaseHeader extends "Purchase Header"
{
    fields
    {
        field(50101; "Outstanding Amount (LCY)"; Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Outstanding Amount (LCY)" WHERE("Document Type" = FIELD("Document Type"),
                                                            "Document No." = FIELD("No.")));
            Caption = 'Outstanding Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        } // Add changes to table fields here
    }

    var
        myInt: Integer;
}