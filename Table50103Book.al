table 50103 Book
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;

        }
        field(2; "ISBN Number"; Text[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(3; "Title"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(4; "Author"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(5; "Book Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(6; "Publication Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
        field(7; "Language"; Option)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
            OptionMembers = English,French,Spanish,German,Italian,Chinese,Japanese,Korean,Arabic,Portuguese;
        }
        field(8; "Book Category"; Option)
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
            OptionMembers = Fiction,Nonfiction,Science,Technology,Art,History,Math,Music,Health,Travel,Religion,Philosophy,Selfhelp,Psychology,Education,Reference,Comics,Children,Others;
        }
        field(9; Publisher; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = True;
        }
    }

    keys
    {
        key(PK; "Book ID")
        {
            Clustered = true;
        }
    }

}