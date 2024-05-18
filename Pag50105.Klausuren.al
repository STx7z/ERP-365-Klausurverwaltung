page 50105 Klausuren
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Klausuren";

    layout
    {
        area(Content)
        {
            group(Allgemein)
            {
                field("Prüfungsnummer"; Rec."Prüfungsnummer")
                {
                    ApplicationArea = All;

                }
                field("Thema"; Rec.Thema)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}