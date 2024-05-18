page 50109 "Klausurergebnisse Liste"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Klausurergebnisse";

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
                field("Semester"; Rec.Semester)
                {
                    ApplicationArea = All;

                }
                field("Matrikelnummer"; Rec.Matrikelnummer)
                {
                    ApplicationArea = All;

                }
                field("Note"; Rec.Note)
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