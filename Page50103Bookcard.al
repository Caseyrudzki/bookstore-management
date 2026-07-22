page 50103 Bookcard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group(BookDetails)
            {
                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Book ID';
                }
                field("ISBN Number"; Rec."ISBN Number")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the ISBN Number';
                    trigger OnValidate()
                    var
                        ISBNValidation: Codeunit BookISBNValidation;
                    begin
                        if not ISBNValidation.ValidateISBNNumber(Rec."ISBN Number") then
                            Error('Invalid ISBN Numbe!');
                    end;
                }
                field("Title"; Rec.Title)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Title';
                }
                field("Author"; Rec.Author)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Author';
                }
                field("Book Price"; Rec."Book Price")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Book Price';
                }
                field("Publication Date"; Rec."Publication Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Publication Date';
                }
                field("Language"; Rec.Language)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Choose the Language';
                }
                field("Book Category"; Rec."Book Category")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Choose the Book Category';
                }
                field("Publisher"; Rec.Publisher)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Publisher';
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}