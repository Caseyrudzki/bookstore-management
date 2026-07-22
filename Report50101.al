report 50107 CustomerFineReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(Lending; "Lending")

        {
            column(Lending_ID; "Lending ID")
            {
            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(Fine_Amount; "Fine Amount")
            {

            }
            column(Book_ID; "Book ID")
            {

            }
            column(Lending_Date; "Lending Date")
            {

            }
            column(Due_Date; "Due Date")
            {

            }
            column(Return_Date; "Return Date")
            {

            }
        }
    }

    requestpage
    {

        layout
        {
            area(Content)
            {

            }
        }


    }

    rendering
    {
        layout(LayoutName)
        {
            Type = Excel;
            LayoutFile = 'FineReportLayout.xlsx';
        }
    }

    var
        StartDate: Date;
        EndDate: Date;
        LenderRec: Record Lending;
}