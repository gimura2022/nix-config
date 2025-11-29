{
  services.dunst = {
    enable = true;

    settings = {
      global = {
        width = "(300,320)";
        height = "(80,95)";
        offset = "(20,20)";
        origin = "top-right";
        frame_color = "#bac2de";
        font = "CaskaydiaCove Nerd Font 10";
      };

      urgency_normal = {
        background = "#1e1e2e";
        foreground = "#cdd6f4";
        timeout = 10;
      };
    };
  };
}
