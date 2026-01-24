{ config, lib, ... }:
{
  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };
  home.file.".config/qt5ct/colors/matugen.conf".source =
    "${config.programs.matugen.theme.files}/.config/qt5ct/colors/matugen.conf";
  home.file.".config/qt6ct/colors/matugen.conf".source =
    "${config.programs.matugen.theme.files}/.config/qt5ct/colors/matugen.conf";
}
