page 50105 LendingList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Lending;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Lending ID"; rec."Lending ID")
                {
                    ApplicationArea = All;

                    TableRelation = Lending."Lending ID";
                    DrillDownPageId = 50106;
                }
                field("Book ID"; rec."Book ID")
                {
                    ApplicationArea = All;

                    TableRelation = Book."Book ID";
                }
                field("Lending Date"; rec."Lending Date")
                {
                    ApplicationArea = All;

                }
                field("Return Date"; rec."Return Date")
                {
                    ApplicationArea = All;

                }
                field("Status"; rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Fine Amount"; rec."Fine Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
        //     area(Factboxes)
        //     {

        //     }
        // }

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
    }
}