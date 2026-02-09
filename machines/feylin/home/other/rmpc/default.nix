{ config, ... }:

let
  colors = config.theme.colorscheme;
in
{
  services = {
    mpd = {
      enable = true;
      musicDirectory = "~/music";
      network.listenAddress = "/tmp/mpd_socket";
      extraConfig = ''
        audio_output {
          type "pipewire"
          name "PipeWire Sound Server"
        }
      '';
    };
  };

  programs.rmpc = {
    enable = true;

    config = ''
      #![enable(implicit_some)]
      #![enable(unwrap_newtypes)]
      #![enable(unwrap_variant_newtypes)]
      (
        address: "/tmp/mpd_socket",
        theme: "theme",
        lyrics_dir: "/home/feyli/music",
        tabs: [
          (
            name: "Playing",
            pane: Split(
              direction: Horizontal,
              panes: [
                (
                  size: "35%",
                  pane: Split(
                    direction: Vertical,
                    panes: [
                      (
                        size: "1",
                        pane: Pane(Property(content: [
                          ( kind: Property( Song( Title ) ), style: ( fg: "${colors.primary}", modifiers: "Bold" ) ),
                        ], align: Center))
                      ),
                      (
                        size: "1",
                        pane: Pane(Property(content: [
                          ( kind: Property(Status(Elapsed)), style: (fg: "${colors.primary}", modifiers: "Bold") ),
                          ( kind: Property(
                            Status(StateV2(
                              playing_label: "  ",
                              paused_label: "  ",
                              stopped_label: "  ",
                              playing_style: (fg: "${colors.primary}"),
                              paused_style: (fg: "${colors.primary}"),
                              stopped_style: (fg: "${colors.primary}")
                              )))),
                          ( kind: Property(Song(Duration)), style: (fg: "${colors.gray}", modifiers: "Bold") )
                        ], align: Center))
                      ),
                      (
                        size: "1",
                        pane: Pane(
                          Property(
                            content: [
                              (kind: Property(Status(RepeatV2(on_label: "", off_label: "",
                                              on_style: (fg: "${colors.primary}", modifiers: "Bold"),
                                              off_style: (fg: "${colors.gray}", modifiers: "Bold"))))),
                              (kind: Text(" "),style: (fg: "${colors.white}", modifiers: "Bold")),
                              (kind: Property(Status(RandomV2(on_label: "", off_label: "",
                                              on_style: (fg: "${colors.primary}", modifiers: "Bold"),
                                              off_style: (fg: "${colors.gray}", modifiers: "Bold"))))),
                              (kind: Text(" "),style: (fg: "${colors.white}", modifiers: "Bold")),
                              (kind: Property(Status(ConsumeV2(on_label: "󰮯", off_label: "󰮯", oneshot_label: "󰮯󰇊",
                                              on_style: (fg: "${colors.primary}", modifiers: "Bold"),
                                              oneshot_style: (fg: "${colors.primary}", modifiers: "Bold"),
                                              off_style: (fg: "${colors.gray}", modifiers: "Bold"))))),
                              (kind: Text(" "),style: (fg: "${colors.white}", modifiers: "Bold")),
                              (kind: Property(Status(SingleV2(on_label: "󰎤", off_label: "󰎦", oneshot_label: "󰇊", off_oneshot_label: "󱅊",
                                              on_style: (fg: "${colors.primary}", modifiers: "Bold"),
                                              oneshot_style: (fg: "${colors.primary}", modifiers: "Bold"),
                                              off_style: (fg: "${colors.gray}", modifiers: "Bold"))))),
                              (kind: Text(" "),style: (fg: "${colors.white}", modifiers: "Bold")),
                              (kind: Property(Status(Crossfade)),style: (fg: "${colors.gray}"),
                               default: (kind: Text("󰴽"), style: (fg: "${colors.gray}"))),
                            ],
                            align: Center
                          )
                        )
                      ),
                      (
                        size: "100%",
                        pane: Pane(AlbumArt),
                      ),
                      (
                        size: "5",
                        pane: Pane(Lyrics),
                      ),
                    ],
                  ),
                ),
                (
                  size: "65%",
                  pane: Pane(Queue)
                )
              ],
            ),
          ),
          (
            name: "Find",
            pane: Pane(Search),
          ),
          (
            name: "Lists",
            pane: Pane(Playlists),
          ),
          (
            name: "Dir",
            pane: Pane(Directories),
          ),
        ],
      )
    '';
  };

  home.file.".config/rmpc/theme.ron".text = ''
    #![enable(implicit_some)]
    #![enable(unwrap_newtypes)]
    #![enable(unwrap_variant_newtypes)]
    (
        default_album_art_path: None,
        show_song_table_header: true,
        draw_borders: true,
        format_tag_separator: " | ",
        browser_column_widths: [20, 38, 42],
        background_color: None,
        text_color: None,
        header_background_color: None,
        modal_background_color: None,
        modal_backdrop: false,
        preview_label_style: (fg: "${colors.yellow}"),
        preview_metadata_group_style: (fg: "${colors.yellow}", modifiers: "Bold"),
        tab_bar: (
            active_style: (fg: "${colors.primary-foreground}", bg: "${colors.primary}", modifiers: "Bold"),
            inactive_style: (),
        ),
        highlighted_item_style: (fg: "${colors.primary}", modifiers: "Bold"),
        current_item_style: (fg: "${colors.primary-foreground}", bg: "${colors.primary}", modifiers: "Bold"),
        borders_style: (fg: "${colors.primary}"),
        highlight_border_style: (fg: "${colors.primary}"),
        symbols: (
            song: "",
            dir: "",
            playlist: "󰲸",
            marker: "● ",
            ellipsis: "...",
            song_style: (fg: "${colors.pink}"),
            dir_style: (fg: "${colors.blue}"),
            playlist_style: None,
        ),
        level_styles: (
            info: (fg: "${colors.primary}", bg: "black"),
            warn: (fg: "${colors.yellow}", bg: "black"),
            error: (fg: "${colors.primary}", bg: "black"),
            debug: (fg: "${colors.light-green}", bg: "black"),
            trace: (fg: "${colors.pink}", bg: "black"),
        ),
        progress_bar: (
            symbols: ["", "", "", "", ""],
            track_style: (fg: "${colors.darker-gray}"),
            elapsed_style: (fg: "${colors.primary}"),
            thumb_style: (fg: "${colors.primary}"),
            use_track_when_empty: false,
        ),
        scrollbar: (
            symbols: ["│", "█", "▲", "▼"],
            track_style: (),
            ends_style: (),
            thumb_style: (fg: "${colors.primary}"),
        ),
        song_table_format: [
            (
                prop: (kind: Property(Title),
                    default: (kind: Text("Unknown"))
                ),
                width: "65%",
            ),
            (
                prop: (kind: Property(Album), style: (fg: "${colors.white}"),
                    default: (kind: Text("Unknown Album"), style: (fg: "${colors.white}"))
                ),
                width: "35%",
            ),
        ],
        components: {},
        layout: Split(
            direction: Vertical,
            panes: [
                (
                    pane: Pane(Tabs),
                    size: "3",
                    borders: "NONE"
                ),
                (
                    pane: Pane(TabContent),
                    size: "100%",
                ),
                (
                    size: "1",
                    pane: Pane(Property(content: [], align: Left))
                ),
                (
                    pane: Pane(ProgressBar),
                    size: "1",
                ),
            ],
        ),
        header: (
            rows: [
                (
                    left: [
                        (kind: Text("["), style: (fg: "${colors.yellow}", modifiers: "Bold")),
                        (kind: Property(Status(StateV2(playing_label: "Playing", paused_label: "Paused", stopped_label: "Stopped"))), style: (fg: "${colors.yellow}", modifiers: "Bold")),
                        (kind: Text("]"), style: (fg: "${colors.yellow}", modifiers: "Bold"))
                    ],
                    center: [
                        (kind: Property(Song(Title)), style: (modifiers: "Bold"),
                            default: (kind: Text("No Song"), style: (modifiers: "Bold"))
                        )
                    ],
                    right: [
                        (kind: Property(Widget(ScanStatus)), style: (fg: "${colors.primary}")),
                        (kind: Property(Widget(Volume)), style: (fg: "${colors.primary}"))
                    ]
                ),
                (
                    left: [
                        (kind: Property(Status(Elapsed))),
                        (kind: Text(" / ")),
                        (kind: Property(Status(Duration))),
                        (kind: Text(" (")),
                        (kind: Property(Status(Bitrate))),
                        (kind: Text(" kbps)"))
                    ],
                    center: [
                        (kind: Property(Song(Artist)), style: (fg: "${colors.yellow}", modifiers: "Bold"),
                            default: (kind: Text("Unknown"), style: (fg: "${colors.yellow}", modifiers: "Bold"))
                        ),
                        (kind: Text(" - ")),
                        (kind: Property(Song(Album)),
                            default: (kind: Text("Unknown Album"))
                        )
                    ],
                    right: [
                        (
                            kind: Property(Widget(States(
                                active_style: (fg: "${colors.white}", modifiers: "Bold"),
                                separator_style: (fg: "${colors.white}")))
                            ),
                            style: (fg: "dark_gray")
                        ),
                    ]
                ),
            ],
        ),
        browser_song_format: [
            (
                kind: Group([
                    (kind: Property(Track)),
                    (kind: Text(" ")),
                ])
            ),
            (
                kind: Group([
                    (kind: Property(Artist)),
                    (kind: Text(" - ")),
                    (kind: Property(Title)),
                ]),
                default: (kind: Property(Filename))
            ),
        ],
        lyrics: (
            timestamp: false
        )
    )
  '';
}
