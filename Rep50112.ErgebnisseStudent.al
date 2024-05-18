report 50112 "Studentenergebnisliste"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'MyRDLReport.rdl';

    dataset
    {
        dataitem(Klausurergebnisse; "Klausurergebnisse")
        {
            column(Prüfungsnummer; "Prüfungsnummer")
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
