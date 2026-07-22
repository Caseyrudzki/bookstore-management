table 50104 Lending
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Lending ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(2; "Book ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
            TableRelation = Book."Book ID";
        }
        field(3; "Lending Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(4; "Return Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(5; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
            OptionMembers = Issued,Returned,Overdue;
        }
        field(6; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(7; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(8; "Fine Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
    }

    keys
    {
        key(PK; "Lending ID")
        {
            Clustered = true;
        }
        key(Book; "Book ID")
        {
            Clustered = False;
        }
    }



}