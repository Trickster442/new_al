page 50300 cardTable
{
    PageType = card;
    UsageCategory = Documents;
    SourceTable = triggerTable;
    Caption = 'card page';

    layout
    {
        area(Content)
        {
            group(GroupName)
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
            field(isVisible; rec.isVisible)
            {
                ApplicationArea = All;
                Editable = Makevisible;
            }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Add)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    rec.Result := rec.Number1 + rec.Number2;
                end;
            }
            action(Subtraction)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if rec.Number2 > rec.Number1 then
                        Error('Cant subtract')
                    else
                        rec.Result := rec.Number1 - rec.Number2;
                end;
            }
            action(Divide)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    rec.Result := rec.Number1 / rec.Number2;
                end;
            }
            action(Multiply)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    rec.Result := rec.Number1 * rec.Number2;
                end;
            }
        }
    }
trigger OnOpenPage()
begin 
    if not rec.isVisible then begin
        rec.isVisible := true;
        rec.Modify();

    end;
end;
trigger OnAfterGetRecord()
begin
    if rec.Result <> 0 then 
    Makevisible := true;
end;

    var
        myInt: Integer;
        Makevisible: Boolean;
}