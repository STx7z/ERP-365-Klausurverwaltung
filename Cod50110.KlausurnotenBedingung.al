codeunit 50110 KlausurnotenBedingung
{
    procedure KlausurnotenBedingung(Prüfungsnummer: Code[10]; Matrikelnummer: Code[20]; Note: Decimal)
    var
        Klausurergebnis: Record "Klausurergebnisse";
        AnzahlVersuche: Integer;
        Bestanden: Boolean;
    begin
        if (Note < 1.0) or (Note > 5.0) then
            Error('Die Note muss zwischen 1,0 und 5,0 liegen.');

        if (Note = 1) or (Note = 1.3) or (Note = 1.7) or (Note = 2) or (Note = 2.3) or (Note = 2.7) or (Note = 3) or (Note = 3.3) or (Note = 3.7) or (Note = 4) or (Note = 4.3) or (Note = 4.7) or (Note = 5) then
            Message('Erfolg')
        else
            Error('Die Note muss in 0,3er Schritten vergeben werden.');

        Klausurergebnis.SetRange("Prüfungsnummer", Prüfungsnummer);
        Klausurergebnis.SetRange("Matrikelnummer", Matrikelnummer);
        AnzahlVersuche := Klausurergebnis.Count();


        Bestanden := false;
        if AnzahlVersuche > 0 then begin
            Klausurergebnis.FindSet();
            repeat
                if Klausurergebnis."Note" <= 4.0 then
                    Bestanden := true;
            until Klausurergebnis.Next() = 0;
        end;

        Klausurergebnis.SetRange("Matrikelnummer", Matrikelnummer);
        Klausurergebnis.SETRANGE("Note", 1.0, 4.0);
        Bestanden := Klausurergebnis.FINDSET;

        if Bestanden then
            Error('Diese Prüfung wurde bereits bestanden und kann nicht wiederholt werden.');

        if AnzahlVersuche > 3 then
            Error('Diese Prüfung kann nur dreimal abgelegt werden.');
    end;
}
