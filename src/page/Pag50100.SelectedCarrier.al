page 50100 SelectedCarrier
{
    ApplicationArea = All;
    Caption = 'Selected Carrier';
    PageType = List;
    SourceTable = NAVI_SelectedCarrier;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Country Code"; Rec."Country Code")
                {
                    ToolTip = 'Specifies the value of the Country Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(Postcode; Rec.Postcode)
                {
                    ToolTip = 'Specifies the value of the Postcode field.', Comment = '%';
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                    ToolTip = 'Specifies the value of the Shipping Agent Code field.', Comment = '%';
                }
            }
        }
    }
}
