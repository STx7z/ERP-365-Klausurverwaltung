table 50101 Student
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Matrikelnummer"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Vorname"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Semester"; Integer)
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Matrikelnummer")
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