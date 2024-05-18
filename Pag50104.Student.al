page 50104 Student
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Student";

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Matrikelnummer"; Rec."Matrikelnummer")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("Vorname"; Rec."Vorname")
                {
                    ApplicationArea = All;
                }
                field("Semester"; Rec."Semester")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {

            action(BerechneDurchschnittsnote)
            {
                Caption = 'Notendurchschnitt berechnen';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Durchschnittsnote: Decimal;
                begin
                    Durchschnittsnote := BerechneDurchschnitt(Rec."Matrikelnummer");
                    Message('Der Notendurchschnitt beträgt ', Durchschnittsnote);
                end;
            }
        }
    }


    procedure BerechneDurchschnitt(Matrikelnummer: Code[20]): Decimal
    var
        Klausurergebnnis: Record "Klausurergebnisse";
        Summe: Decimal;
        Zähler: Integer;
    begin
        Summe := 0;
        Zähler := 0;
        Klausurergebnnis.SetRange("Matrikelnummer", Matrikelnummer);
        if Klausurergebnnis.FindSet() then
            repeat
                Summe += Klausurergebnnis."Note";
                Zähler += 1;
            until Klausurergebnnis.Next() = 0;

        if Zähler > 0 then
            exit(Summe / Zähler)
        else
            exit(0);
    end;
}