with Alphabet;
with Ada.Containers.Vectors;

package GreekAlphabet is

   subtype GreekLetter is Alphabet.Letter;

   function "="(Left, Right : GreekLetter) return Boolean;

-- Capital letter
   GreekAlpha : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Alpha"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("a"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b1"));
   GreekBeta : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Beta"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("b"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b2"));
   GreekGamma : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Gamma"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("gu"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b3"));
   GreekDelta : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Delta"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("d"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b4"));
   GreekEpsilon : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Epsilon"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("é"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b5"));
   GreekDzeta : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Dzeta"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("dz"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b6"));
   GreekEta : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Eta"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("è"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b7"));
   GreekTheta : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Theta"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("th"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b8"));
   GreekIota : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Iota"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("i"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03b9"));
   GreekKappa : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Kappa"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("k"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u039a"));
   GreekLambda : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Lambda"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("l"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03bb"));
   GreekMu : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Mu"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("m"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03bc"));
   GreekNu : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Nu"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("n"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03bd"));
   GreekXhi : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Xhi"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("x"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03be"));
   GreekOmicron : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Omicron"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("o"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03bf"));
   GreekPi : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Pi"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("p"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c0"));
   GreekRho : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Rho"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("r"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c1"));
   GreekSigma : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Sigma"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("ss"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c3"));
   GreekSigmaEndOfWord : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Sigma"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("s"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c2"));
   GreekTau : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Tau"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("t"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c4"));
   GreekUpsilon : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Upsilon"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("u"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c5"));
   GreekPhi : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Phi"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("f"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c6"));
   GreekKhi : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Khi"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("k"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c7"));
   GreekPsi : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Psi"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("ps"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c8"));
   GreekOmega : GreekLetter := (Name => Alphabet.PkgName.To_Bounded_String ("Omega"),
                           Sound => Alphabet.PkgSound.To_Bounded_String ("ô"),
                           Symbol => Alphabet.PkgUnicode.To_Bounded_String ("\u03c9"));

   package GreekWord is new Ada.Containers.Vectors
       (Index_Type   => Natural,
        Element_Type => GreekLetter);

end GreekAlphabet;  
