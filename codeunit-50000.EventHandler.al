codeunit 50000 "Event Handler"
{
    [EventSubscriber(ObjectType::Table, 18, 'OnAfterValidateEvent', 'SFAC', false, false)]
    local procedure MyMessage(CurrFieldNo: Integer; var Rec: Record Customer; var xRec: Record Customer)
    begin
        with Rec do begin
            SFAC := 10;
        end;
    end;

    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;
}