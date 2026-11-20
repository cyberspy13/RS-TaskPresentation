tableextension 50101 NAVI_ShipToAddress extends "Ship-to Address"
{
    fields
    {
        field(50100; "Selected Carrier"; Code[10])
        {
            Caption = 'Selected Carrier';
            DataClassification = ToBeClassified;
            TableRelation = "Shipping Agent".Code;
        }
    }
}
