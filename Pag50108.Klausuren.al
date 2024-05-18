page 50108 "Klausurenliste"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Klausuren";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
        area(Factboxes)
        {

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
}