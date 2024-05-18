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
            action("Exportieren als XML")
            {
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                begin
                    Xmlport.Run(50111, false, false);

                end;
            }
        }
    }

    var
        KlausurnotenBedingung: Codeunit KlausurnotenBedingung;
}