table 50200 triggerTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Number1; Decimal)
        {
            DataClassification = ToBeClassified;

        }

        field(2; Number2; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                // Result := (Rec.Number1 + Rec.Number2);
                // Multiply := (Rec.Number1 * Rec.Number2);
                // Subtraction := (Rec.Number1 - Rec.Number2);
                // Divide := (Rec.Number1 / Rec.Number2);
                // Add := (Rec.Number1 + Rec.Number2);
            end;
        }
        field(3; Result; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        // field(4; Multiply; Decimal)
        // {
        //     DataClassification = ToBeClassified;
        // }
        // field(5; Subtraction; Decimal)
        // {
        //     DataClassification = ToBeClassified;
        // }
        // field(6; Divide; Decimal)
        // {
        //     DataClassification = ToBeClassified;
        // }
        // field(7; Add; Decimal)
        // {
        //     DataClassification = ToBeClassified;
        // }
        field(8; isVisible; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }


    keys
    {
        key(Key1; Number1, Number2)
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
        Message('Data Inserted %1 %2', Number1, Number2);
    end;

    trigger OnModify()
    begin
        Message('Data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Renamed');
    end;

}