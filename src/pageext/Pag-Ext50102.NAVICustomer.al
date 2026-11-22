pageextension 50102 NAVI_Customer extends "Customer Card"
{
    // layout
    // {
    //     modify("Ship-to Code")
    //     {
    //         trigger OnAfterValidate()
    //         var
    //             ShipToAddress: Record "Ship-to Address";
    //         begin
    //             ShipToAddress.Reset();
    //             ShipToAddress.SetRange("Customer No.", Rec."No.");
    //             ShipToAddress.SetRange(Code, Rec."Ship-to Code");
    //             if ShipToAddress.IsEmpty then
    //                 exit;
    //             if ShipToAddress.FindFirst() then begin
    //                 if ShipToAddress."Selected Carrier" <> '' then
    //                     Rec."Shipping Agent Code" := ShipToAddress."Selected Carrier";
    //             end;
    //         end;
    //     }
    // }
}
