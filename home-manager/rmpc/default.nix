{ self, ... }:

{
  services.mpd = {
    enable = true;
    musicDirectory = "~/music";
    network.listenAddress = "/tmp/mpd_socket";
  };

  programs.rmpc = {
    enable = true;

    config = ''
      #![enable(implicit_some)]
      #![enable(unwrap_newtypes)]
      #![enable(unwrap_variant_newtypes)]
      (
        address: "/tmp/mpd_socket",
        theme: "${self}/home-manager/rmpc/lunarni.ron",
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
                        size: "2",
                        pane: Split(
                          direction: Vertical,
                          panes: [
                            (
                              size: "1",
                              pane: Pane(Property(content: [
                                ( kind: Property(
                                  Status(StateV2(
                                    playing_label: " ",
                                    paused_label: " ",
                                    stopped_label: " ",
                                    playing_style: (fg: "red"),
                                    paused_style: (fg: "red"),
                                    stopped_style: (fg: "red")
                                    )))),
                                ( kind: Property( Song( Title ) ), style: ( fg: "red", modifiers: "Bold" ) ),
                                ( kind: Property( Status( RepeatV2( on_label: "󰑖", off_label: "", on_style: ( fg: "red" ), on_off: ( fg: "red" ) ) ) ) ),
                                ( kind: Property( Status( SingleV2( on_label: "󰑘", off_label: "", oneshot_label: "", on_style: ( fg: "red" ), on_off: ( fg: "red" ), oneshot_style: ( fg: "yellow" ) ) ) ) ),
                                ( kind: Property( Status( SingleV2( on_label: "", off_label: "", on_style: ( fg: "red" ), on_off: ( fg: "red" ) ) ) ) ),
                                ( kind: Property( Status( ConsumeV2( on_label: "C", off_label: "", oneshot_label: "", on_style: ( fg: "red" ), on_off: ( fg: "red" ), oneshot_style: ( fg: "yellow" ) ) ) ) ),
                              ], align: Center))
                            ),
                            (
                              size: "1",
                              pane: Pane(Property(content: [
                                ( kind: Property(Song(Artist)), style: (fg: "white", modifiers: "Bold") ),
                                ( kind: Text(" - "), style: (fg: "white", modifiers: "Bold") ),
                                ( kind: Property(Song(Album)), style: (fg: "white", modifiers: "Bold") )
                              ], align: Center))
                            ),
                          ]
                        )
                      ),
                      (
                        size: "100%",
                        pane: Pane(AlbumArt),
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
}
