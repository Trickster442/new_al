page 50500 ListPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = triggerTable;
    Caption = 'triggerTable';
    CardPageId = cardTable;
    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(Number1; Rec.Number1)
                {
                    ApplicationArea = All;
  
                }
                field(Number2; rec.Number2)
                {
                    ApplicationArea = All;
                }
                field(Result; Rec.Result)
                {
                    ApplicationArea = All;
                }
                // field(Add; Rec.Add)
                // {
                //     ApplicationArea = All;
                // }
                // field(Subtraction; Rec.Subtraction)
                // {
                //     ApplicationArea = All;
                // }
                // field(Divide; Rec.Divide)
                // {
                //     ApplicationArea = All;
                // }
                // field(Multiply; Rec.Multiply)
                // {
                //     ApplicationArea = All;
                // }
                
            }
        }
    }


    var
        myInt: Integer;
}