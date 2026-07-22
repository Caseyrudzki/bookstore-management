page 50106 LendingCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Lending;

    layout
    {
        area(Content)
        {
            group(LendingDetails)
            {
                field("Lending ID"; rec."Lending ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Lending ID';
                }
                field("Book ID"; rec."Book ID")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Book ID';
                    TableRelation = Book."Book ID";
                }
                field("Lending Date"; rec."Lending Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Lending Date';
                    trigger OnValidate()

                    begin
                        if rec."Lending Date" <> Today then
                            Error('Lending date should be today.');
                        rec."Due Date" := rec."Lending Date" + 30;
                    end;
                }
                field("Return Date"; rec."Return Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Return Date';
                    trigger OnValidate()

                    begin
                        if rec."Return Date" <> 0D then begin
                            if rec."Return Date" > rec."Due Date" then
                                rec."Fine Amount" := 30
                            else
                                rec."Fine Amount" := 0;
                        end;

                    end;
                }
                field("Status"; rec.Status)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Choose the Status';
                }
                field("Customer Name"; rec."Customer Name")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Customer Name';
                }
                field("Due Date"; rec."Due Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Due Date';
                    Editable = false;
                }
                field("Fine Amount"; rec."Fine Amount")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Enter the Fine Amount';
                    Editable = false;
                }
            }
        }
    }

}