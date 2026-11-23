codeunit 50100 NAVI_SalesOrderCdu
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Sell-to Customer No.', false, false)]
    local procedure OnAfterValidateSellToCustomerNo(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    begin
        GetSelectedShippingAgentCode(Rec)
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Ship-to Code', false, false)]
    local procedure OnAfterValidateShipToCode(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    begin
        GetSelectedShippingAgentCode2(Rec)
    end;



    local procedure GetSelectedShippingAgentCode(var SalesHeader: record "Sales Header")
    var
        Customer: Record Customer;
    begin
        if SalesHeader."Document Type" <> SalesHeader."Document Type"::Order then
            exit;

        if not Customer.Get(SalesHeader."Sell-to Customer No.") then exit;

        SalesHeader.Validate("Shipping Agent Code", Customer."Shipping Agent Code");
    end;

    local procedure GetSelectedShippingAgentCode2(var SalesHeader2: record "Sales Header")
    var
        Customer2: Record Customer;
        ShipToAddress: Record "Ship-to Address";
    begin
        if SalesHeader2."Document Type" <> SalesHeader2."Document Type"::Order then
            exit;

        if not Customer2.Get(SalesHeader2."Sell-to Customer No.") then exit;

        ShipToAddress.SetRange("Customer No.", SalesHeader2."Sell-to Customer No.");
        ShipToAddress.SetRange(Code, SalesHeader2."Ship-to Code");
        if ShipToAddress.FindFirst() then begin
            SalesHeader2.Validate("Shipping Agent Code", ShipToAddress."Selected Carrier");
        end;
    end;









    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnAfterValidateEvent', 'Ship-to Post Code', false, false)]
    local procedure OnAfterValidateSellToShipTOPostCode(var Rec: Record "Sales Header"; var xRec: Record "Sales Header"; CurrFieldNo: Integer)
    begin
        GetSelectedShippingAgentShipCode(Rec)
    end;

    local procedure GetSelectedShippingAgentShipCode(var SalesHeader2: record "Sales Header")
    var
        Customer2: Record Customer;
        ShipToAddress: Record "Ship-to Address";
        SelectedCarrier: Record NAVI_SelectedCarrier;
        i: Integer;
    begin
        /*
        SelectedCarrier.reset();
        SelectedCarrier.SetRange("Country Code";
        Rec."Country/Region Code");
        SelectedCarrier.SetRange(Postcode;
        rec."Post Code");

        Postcode := DelChr(Postcode, '=', ' ');
        for i := StrLen(Postcode) downto 1 do
            if Zone.Get(CopyStr(Postcode, 1, i)) then
                exit(true);
        exit(false);
        */
    end;

}
