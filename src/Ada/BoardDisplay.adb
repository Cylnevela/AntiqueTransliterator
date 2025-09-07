with Gtk.Main;
with Gtk.Window;

package body BoardDisplay is
   procedure Display is
      Window : Gtk.Window.Gtk_Window;
   begin
      Gtk.Main.Init;
      Gtk.Window.Gtk_New(Window);
      Gtk.Window.Show(Window);
      Gtk.Main.Main;
   end Display;
end BoardDisplay;
