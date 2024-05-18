table 50103 Klausurergebnisse
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Prüfungsnummer"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Semester"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Matrikelnummer"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Note"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Prüfungsnummer", "Matrikelnummer", "Semester")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}