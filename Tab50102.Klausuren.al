table 50102 Klausuren
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Prüfungsnummer"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Thema"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Prüfungsnummer")
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