{ ... }:

let
  colors = import ../home-manager/themes/kitty.nix;
  color = hx: colors."color${hx}";
in
{
  services.displayManager.lemurs = {
    enable = true;
    settings = {
      background = {
        show_background = true;
        style = {
          color = color "0";
          # border_color = color "1";
        };
      };

      environment_switcher = {
        mover_color = color "8";
        mover_color_focused = color "1";

        show_neighbours = false;

        selected_color_focused = color "1";
      };

      username_field.style = {
        title_color_focused = color "1";
        content_color_focused = color "1";

        border_color_focused = color "1";
      };

      password_field.style = {
        title_color_focused = color "1";
        content_color_focused = color "1";

        border_color_focused = color "1";
      };
    };
  };
}
