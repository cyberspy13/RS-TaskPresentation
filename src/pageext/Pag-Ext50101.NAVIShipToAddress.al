pageextension 50101 NAVI_ShipToAddress extends "Ship-to Address"
{
    layout
    {
        addlast(General)
        {
            field(Postcode; Rec.Postcode)
            {
                ApplicationArea = All;
            }
            field("Selected Carrier"; Rec."Selected Carrier")
            {
                ApplicationArea = All;
            }
        }
    }
}
