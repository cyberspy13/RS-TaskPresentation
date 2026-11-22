tableextension 50100 NAVI_SalesHeader extends "Sales Header"
{
    // trigger OnAfterInsert()
    // var
    //     Customer: record Customer;
    // begin
    //     if Rec."Sell-to Customer No." <> '' then begin
    //         Customer.Get(Rec."Sell-to Customer No.");
    //         if not Customer.IsEmpty then
    //             Rec."Shipping Agent Code" := Customer."Shipping Agent Code";
    //     end;
    // end;

    // trigger OnAfterModify()
    // var
    //     Customer: record Customer;
    // begin
    //     if Rec."Sell-to Customer No." <> '' then begin
    //         Customer.Get(Rec."Sell-to Customer No.");
    //         if not Customer.IsEmpty then
    //             Rec."Shipping Agent Code" := Customer."Shipping Agent Code";
    //     end;
    // end;
}
