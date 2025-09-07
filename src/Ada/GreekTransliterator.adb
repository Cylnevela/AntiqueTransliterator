with Ada.Text_IO;
with Ada.Strings;
with GreekAlphabet;
with Alphabet;

package body GreekTransliterator is
   procedure PresentYourself is 
      alpha : GreekAlphabet.GreekLetter := GreekAlphabet.GreekAlpha;
      omega : GreekAlphabet.GreekLetter := GreekAlphabet.GreekOmega;
   begin
      Ada.Text_IO.Put_Line ("I can transliterate letters to Greek Alphabet !");
      Ada.Text_IO.Put_Line ("Look at my favorite letters :");
      Ada.Text_IO.Put_Line (Alphabet.PkgUnicode.To_String(alpha.Symbol));
      Ada.Text_IO.Put_Line (Alphabet.PkgUnicode.To_String(omega.Symbol));

   end PresentYourself;
end GreekTransliterator;