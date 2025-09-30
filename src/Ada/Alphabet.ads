with Ada.Strings; use Ada.Strings;
with Ada.Strings.Bounded;

package Alphabet is
   package PkgUnicode is 
      package B_Str is new
         Ada.Strings.Bounded.Generic_Bounded_Length
            (Max => 6);
      use B_Str;

      type Unicode is new Bounded_String;

      defaultUnicode : Unicode := To_Bounded_String("\u0000"); 
      --with Dynamic_Predicate => (for all I in Unicode'Range =>
        --                         (case I is
          --                         when 1 => Unicode (I) = '/',
            --                       when 2 => Unicode (I) = 'u',
              --                     when 3 .. 6 => Unicode (I) in '0' .. '9'));
   end PkgUnicode;

   package PkgName is
      package B_Str is new
         Ada.Strings.Bounded.Generic_Bounded_Length
            (Max => 10);
      use B_Str;

      type Name is new Bounded_String;
      
      defaultName : Name := To_Bounded_String("Unknown"); 
   end PkgName;

   package PkgSound is
      package B_Str is new
         Ada.Strings.Bounded.Generic_Bounded_Length
            (Max => 4);
      use B_Str;

      type Sound is new Bounded_String;

      defaultSound : Sound := To_Bounded_String("0"); 
   end PkgSound;

   type Letter is record
      Name : PkgName.Name := PkgName.defaultName;
      Sound : PkgSound.Sound := PkgSound.defaultSound;
      --CapitalSymbol : Unicode := "\u0000";
      Symbol : PkgUnicode.Unicode := PkgUnicode.defaultUnicode;
   end record;

end Alphabet;