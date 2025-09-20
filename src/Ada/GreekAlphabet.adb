with GreekAlphabet;
with Alphabet;
use Alphabet.PkgName;
use Alphabet.PkgSound;
use Alphabet.PkgUnicode;

package body GreekAlphabet is

   function "="(Left, Right : GreekLetter) return Boolean
      is
   begin
      return ((Left.Name = Right.Name) 
            and then (Left.Sound = Right.Sound) 
            and then (Left.Symbol = Right.Symbol));
   end "=";

end GreekAlphabet;  
