xmlport 50111 ExportKlausurergebnisse
{
    Format = Xml;
    Direction = Export;
    schema
    {
        textelement(Klausurergebnisse)
        {
            tableelement(Klausurergebnis; Klausurergebnisse)
            {
                fieldelement("Prüfungsnummer"; Klausurergebnis."Prüfungsnummer")
                {

                }
                fieldelement(Semester; Klausurergebnis.Semester)
                {

                }
                fieldelement(Matrikelnummer; Klausurergebnis.Matrikelnummer)
                {

                }
                fieldelement(Note; Klausurergebnis.Note)
                {

                }
            }
        }
    }



}