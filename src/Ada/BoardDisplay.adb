with GreekBoardDisplay;
with Gtk.Main;
with Gtk.Rc;
with Gtk.Window;
with Gtk.Button;
with Gtk.Box;

-- Be careful when using Threads with GtkAda on Windows
package body BoardDisplay is
   procedure GreekButtonHandler (Button : access Gtk.Button.Gtk_Button_Record'Class) is
   begin
      GreekBoardDisplay.Display;
   end GreekButtonHandler;

   procedure Display is
      Board_Window : Gtk.Window.Gtk_Window;
      Vbox : Gtk.Box.Gtk_Box;
      Greek_Button : Gtk.Button.Gtk_Button;
      Linear_A_Button : Gtk.Button.Gtk_Button;
   begin

      -- Initializes GtkAda
      Gtk.Main.Init;

      -- Initializes application style
      --Gtk.Rc.Parse ("ApplicationStyle.rc");

      Gtk.Window.Gtk_New(Board_Window);
      Gtk.Window.Set_Title(Window => Board_Window,
                           Title => "Antique Transliterator");
      Gtk.Window.Resize(Window => Board_Window, Width => 200, Height => 600);

      Gtk.Button.Gtk_New (Greek_Button, Label => "Greek Alphabet");
      Gtk.Button.Gtk_New (Linear_A_Button, Label => "Linear A Alphabet");
    --  Widget_Callback.Object_Connect(Greek_Button, "clicked",
  --             Widget_Callback.To_Marshaller (GreekButtonHandler'Access),
--               Greek_Button);
      Greek_Button.On_Clicked(GreekButtonHandler'Access);

      Gtk.Box.Gtk_New_Vbox(Vbox);
      Vbox.Add(Greek_Button);
      Vbox.Add(Linear_A_Button);
      Gtk.Window.Add(Board_Window, Vbox);

      -- diff Show / Show_All ?
      Gtk.Window.Show_All(Board_Window);

      -- Signal handling loop
      Gtk.Main.Main;
   end Display;
end BoardDisplay;
