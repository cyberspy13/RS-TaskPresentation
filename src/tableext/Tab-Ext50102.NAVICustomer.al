tableextension 50102 NAVI_CustomerCard extends "Customer"
{
    fields
    {
        modify("Ship-to Code")
        {
            trigger OnAfterValidate()
            var
                ShipToAddress: Record "Ship-to Address";
            begin
                ShipToAddress.Reset();
                ShipToAddress.SetRange("Customer No.", Rec."No.");
                ShipToAddress.SetRange(Code, Rec."Ship-to Code");
                if ShipToAddress.IsEmpty then
                    exit;
                if ShipToAddress.FindFirst() then begin
                    if ShipToAddress."Selected Carrier" <> '' then
                        Rec."Shipping Agent Code" := ShipToAddress."Selected Carrier" else
                        Rec."Shipping Agent Code" := '';
                end;
            end;
        }
    }
}
