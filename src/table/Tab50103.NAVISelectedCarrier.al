table 50100 NAVI_SelectedCarrier
{
    Caption = 'Selected Carrier';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(2; Postcode; Text[250])
        {
            Caption = 'Postcode';
            //TableRelation = "Post Code";
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(4; "Shipping Agent Code"; Code[10])
        {
            Caption = 'Shipping Agent Code';
            TableRelation = "Shipping Agent".Code;
        }
        field(5; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
    }
    keys
    {
        key(PK; "Entry No.", Postcode, "Country Code")
        {
            Clustered = true;
        }

    }
}