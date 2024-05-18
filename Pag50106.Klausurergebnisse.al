page 50106 Klausurergebnisse
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Klausurergebnisse";

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
                    trigger OnValidate()
                    begin
                        KlausurnotenBedingung.KlausurnotenBedingung(Rec."Prüfungsnummer", Rec.Matrikelnummer, Rec.Note);
                    end;

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
        KlausurnotenBedingung: Codeunit KlausurnotenBedingung;
}