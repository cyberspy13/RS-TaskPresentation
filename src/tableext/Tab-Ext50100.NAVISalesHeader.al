tableextension 50100 NAVI_SalesHeader extends "Sales Header"
{
    fields
    {
        field(50100; "Selected Carrier"; Code[10])
        {
            Caption = 'Selected Carrier';
            DataClassification = ToBeClassified;
        }
    }
}
