report 50113 "Klausurergebnisliste"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'MyRDLReportKlausur.rdl';

    dataset
    {
        dataitem(Klausurergebnisse; "Klausurergebnisse")
        {
            column("Prüfungsnummer"; "Prüfungsnummer")
            {
            }
            column(Semester; "Semester")
            {
            }
            column(Matrikelnummer; "Matrikelnummer")
            {
            }
            column(Note; "Note")
            {
            }

        }
    }
}