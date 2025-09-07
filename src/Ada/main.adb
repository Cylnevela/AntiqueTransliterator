with Ada.Text_IO;
with BoardDisplay;
with GreekTransliterator;

procedure main is
    Language : Integer := 0;
begin
    Ada.Text_IO.Put_Line("You just started AntiqueTransliterator in Ada !!");
    Ada.Text_IO.Put_Line("Choose the alphabet you want to transliterate to :");
    Ada.Text_IO.Put_Line("1. Greek");

    Language := Integer'Value (Ada.Text_IO.Get_Line);

    case Language is
        when 1 => BoardDisplay.Display;--GreekTransliterator.PresentYourself;
        when others => Ada.Text_IO.Put_Line("I do not know this alphabet :'(");
    end case;

end main;