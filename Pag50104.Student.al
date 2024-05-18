page 50104 Student
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Student";

    layout
    {
        area(Content)
        {
            group(Allgemein)
            {
                field("Matrikelnummer"; Rec.Matrikelnummer)
                {
                    ApplicationArea = All;

                }
                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Vorname"; Rec.Vorname)
                {
                    ApplicationArea = All;

                }
                field("Semester"; Rec.Semester)
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