pageextension 50101 NAVI_ShipToAddress extends "Ship-to Address"
{
    layout
    {
        addlast(General)
        {
            field("Selected Carrier"; Rec."Selected Carrier")
            {
                ApplicationArea = All;
            }
        }
    }
}
