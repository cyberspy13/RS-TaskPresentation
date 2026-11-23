tableextension 50101 NAVI_ShipToAddress extends "Ship-to Address"
{
    fields
    {
        field(50100; "Selected Carrier"; Code[10])
        {
            Caption = 'Selected Carrier';
            DataClassification = ToBeClassified;
            TableRelation = "Shipping Agent".Code;
            trigger OnValidate()
            var
                Customer: Record Customer;
            begin
                Customer.Reset();
                Customer.Get(Rec."Customer No.");
                if not Customer.IsEmpty then begin
                    if (Customer."Shipping Agent Code" = '') or (Customer."Shipping Agent Code" <> Rec."Selected Carrier") then begin
                        Customer."Shipping Agent Code" := Rec."Selected Carrier";
                        Customer.Modify();
                    end;
                end else
                    exit;
            end;
        }
        field(50102; Postcode; Text[250])
        {
            Caption = 'Postcode';
            TableRelation = NAVI_SelectedCarrier.Postcode;
        }
    }
}
