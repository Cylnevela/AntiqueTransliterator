
with GreekAlphabet;
with Alphabet;
with Gtk.Window;
with Gtk.Box;
with Gtk.Text_View;
with Gtk.Text_Buffer;
with Gtk.Button;

-- Be careful when using Threads with GtkAda on Windows
package body GreekBoardDisplay is

   procedure Display is
      Greek_Board_Window : Gtk.Window.Gtk_Window;
      Vbox : Gtk.Box.Gtk_VBox;
      HboxRes : Gtk.Box.Gtk_HBox;
      Hbox1 : Gtk.Box.Gtk_HBox;
      Hbox2 : Gtk.Box.Gtk_HBox;
      Hbox3 : Gtk.Box.Gtk_HBox;
      Hbox4 : Gtk.Box.Gtk_HBox;
      Hbox5 : Gtk.Box.Gtk_HBox;

      Letters_Array : GreekAlphabet.GreekWord.Vector; 
      Phonetic_Text : Gtk.Text_View.Gtk_Text_View;
      Phonetic_Text_Buffer : Gtk.Text_Buffer.Gtk_Text_Buffer;
      Res_Text : Gtk.Text_View.Gtk_Text_View;
      Res_Text_Buffer : Gtk.Text_Buffer.Gtk_Text_Buffer;
      Edit_Button : Gtk.Button.Gtk_Button;

      Alpha_Button : Gtk.Button.Gtk_Button;
      Beta_Button : Gtk.Button.Gtk_Button;
      Gamma_Button : Gtk.Button.Gtk_Button;
      Delta_Button : Gtk.Button.Gtk_Button;
      Epsilon_Button : Gtk.Button.Gtk_Button;
      Dzeta_Button : Gtk.Button.Gtk_Button;
      Eta_Button : Gtk.Button.Gtk_Button;
      Theta_Button : Gtk.Button.Gtk_Button;
      Iota_Button : Gtk.Button.Gtk_Button;
      Kappa_Button : Gtk.Button.Gtk_Button;
      Lambda_Button : Gtk.Button.Gtk_Button;
      Mu_Button : Gtk.Button.Gtk_Button;
      Nu_Button : Gtk.Button.Gtk_Button;
      Xhi_Button : Gtk.Button.Gtk_Button;
      Omicron_Button : Gtk.Button.Gtk_Button;
      Pi_Button : Gtk.Button.Gtk_Button;
      Rho_Button : Gtk.Button.Gtk_Button;
      Sigma_Button : Gtk.Button.Gtk_Button;
      Tau_Button : Gtk.Button.Gtk_Button;
      Upsilon_Button : Gtk.Button.Gtk_Button;
      Phi_Button : Gtk.Button.Gtk_Button;
      Khi_Button : Gtk.Button.Gtk_Button;
      Psi_Button : Gtk.Button.Gtk_Button;
      Omega_Button : Gtk.Button.Gtk_Button;

      procedure Refresh is
      begin
         Phonetic_Text_Buffer.set_Text("");
         Res_Text_Buffer.set_Text("");

         --for letter of Letters_Array loop
            --Phonetic_Text_Buffer.Append(letter.Sound);
            --Res_Text_Buffer.Append(letter.Symbol);
         --end loop;
      end Refresh;

   begin

      Gtk.Window.Gtk_New(Greek_Board_Window);
      Gtk.Window.Set_Title(Window => Greek_Board_Window,
                           Title => "Greek Transliterator");
      Gtk.Window.Resize(Window => Greek_Board_Window, Width => 200, Height => 200);

      Gtk.Button.Gtk_New (Alpha_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekAlpha.Sound));
      Gtk.Button.Gtk_New (Beta_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekBeta.Sound));
      Gtk.Button.Gtk_New (Gamma_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekGamma.Sound));
      Gtk.Button.Gtk_New (Delta_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekDelta.Sound));
      Gtk.Button.Gtk_New (Epsilon_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekEpsilon.Sound));
      Gtk.Button.Gtk_New (Dzeta_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekDzeta.Sound));
      Gtk.Button.Gtk_New (Eta_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekEta.Sound));
      Gtk.Button.Gtk_New (Theta_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekTheta.Sound));
      Gtk.Button.Gtk_New (Iota_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekIota.Sound));
      Gtk.Button.Gtk_New (Kappa_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekKappa.Sound));
      Gtk.Button.Gtk_New (Lambda_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekLambda.Sound));
      Gtk.Button.Gtk_New (Mu_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekMu.Sound));
      Gtk.Button.Gtk_New (Nu_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekNu.Sound));
      Gtk.Button.Gtk_New (Xhi_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekXhi.Sound));
      Gtk.Button.Gtk_New (Omicron_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekOmicron.Sound));
      Gtk.Button.Gtk_New (Pi_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekPi.Sound));
      Gtk.Button.Gtk_New (Rho_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekRho.Sound));
      Gtk.Button.Gtk_New (Sigma_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekSigma.Sound));
      Gtk.Button.Gtk_New (Tau_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekTau.Sound));
      Gtk.Button.Gtk_New (Upsilon_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekUpsilon.Sound));
      Gtk.Button.Gtk_New (Phi_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekPhi.Sound));
      Gtk.Button.Gtk_New (Khi_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekKhi.Sound));
      Gtk.Button.Gtk_New (Psi_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekPsi.Sound));
      Gtk.Button.Gtk_New (Omega_Button, Label => Alphabet.PkgSound.To_String(GreekAlphabet.GreekOmega.Sound));
      -- ajouter en haut le résultat en grec (champs capable d'afficher les symboles)
      -- ajouter autant de boutons qu'il y a de lettres dans l'alphabet grec
      -- chaque bouton doit indiquer le son à écrire
      -- une fois cliqué, chaque bouton doit ajouter son symbole dans le champs résultat
      -- ajotuer un bouton suppression à droite du champs de résultat 

      -- contient les box horizontales
      Gtk.Box.Gtk_New_Vbox(Vbox);
      -- contient le résultat et la commande retour
      Gtk.Box.Gtk_New_Hbox(HboxRes);
      -- contient le texte phonetique
      Gtk.Text_Buffer.Gtk_New(Phonetic_Text_Buffer);
      Gtk.Text_View.Gtk_New(Phonetic_Text, Phonetic_Text_Buffer);
      -- contient le texte translitere
      Gtk.Text_Buffer.Gtk_New(Res_Text_Buffer);
      Gtk.Text_View.Gtk_New(Res_Text, Res_Text_Buffer);
      -- contient la commande retour
      Gtk.Button.Gtk_New(Edit_Button, Label => "EDIT");

      -- contiennent les groupes de boutons
      Gtk.Box.Gtk_New_Hbox(Hbox1);
      Gtk.Box.Gtk_New_Hbox(Hbox2);
      Gtk.Box.Gtk_New_Hbox(Hbox3);
      Gtk.Box.Gtk_New_Hbox(Hbox4);
      Gtk.Box.Gtk_New_Hbox(Hbox5);

      HboxRes.Add(Res_Text);
      HboxRes.Add(Edit_Button);

      Hbox1.Add(Alpha_Button);
      Hbox1.Add(Beta_Button);
      Hbox1.Add(Gamma_Button);
      Hbox1.Add(Delta_Button);
      Hbox1.Add(Epsilon_Button);

      Hbox2.Add(Dzeta_Button);
      Hbox2.Add(Eta_Button);
      Hbox2.Add(Theta_Button);
      Hbox2.Add(Iota_Button);
      Hbox2.Add(Kappa_Button);

      Hbox3.Add(Lambda_Button);
      Hbox3.Add(Mu_Button);
      Hbox3.Add(Nu_Button);
      Hbox3.Add(Xhi_Button);
      Hbox3.Add(Omicron_Button);

      Hbox4.Add(Pi_Button);
      Hbox4.Add(Rho_Button);
      Hbox4.Add(Sigma_Button);
      Hbox4.Add(Tau_Button);
      Hbox4.Add(Upsilon_Button);

      Hbox5.Add(Phi_Button);
      Hbox5.Add(Khi_Button);
      Hbox5.Add(Psi_Button);
      Hbox5.Add(Omega_Button);
      
      Vbox.Add(Phonetic_Text);
      Vbox.Add(HboxRes);
      Vbox.Add(Hbox1);
      Vbox.Add(Hbox2);
      Vbox.Add(Hbox3);
      Vbox.Add(Hbox4);
      Vbox.Add(Hbox5);

      Gtk.Window.Add(Greek_Board_Window, Vbox);

      -- diff Show / Show_All ?
      Gtk.Window.Show_All(Greek_Board_Window);

      -- Signal handling loop
      --Gtk.Main.Main;
   end Display;
end GreekBoardDisplay;
