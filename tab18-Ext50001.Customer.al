tableextension 50001 "BC Customer" extends Customer
{
    fields
    {
        field(50000; SFAC; Decimal)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                Text001: Text[50];

            begin
                Text001 := 'Business Central';
                Message('Hello %1', Text001);
            end;
        }
    }

    var
        myInt: Integer;
}