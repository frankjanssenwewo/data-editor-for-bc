page 90009 "DET Data Editor Setup"
{
    ApplicationArea = All;
    Caption = 'Data Editor Setup';
    PageType = Card;
    SourceTable = "DET Data Editor Setup";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Enable Data Editor Log"; Rec."Enable Data Editor Log")
                {
                    ToolTip = 'May adversely affect performance.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Promoted)
        {
            actionref(DataEditorLog_promoted; DataEditorLog)
            {

            }
        }
        area(Processing)
        {
            action(DataEditorLog)
            {
                ApplicationArea = All;
                Caption = 'Data Editor Log';
                ToolTip = 'Data Editor Log';
                Image = ShowList;
                RunObject = page "DET Data Editor Log";
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert(true);
        end;
    end;
}
