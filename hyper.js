module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 14,

    // font family with optional fallbacks
    fontFamily: "'Fira Code', Menlo, 'DejaVu Sans Mono', 'Lucida Console', monospace",

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: "rgba(248,28,229,.8)",

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: "UNDERLINE",

    // color of the text
    foregroundColor: "#fff",

    // terminal background color
    backgroundColor: "#000",

    // border color (window, tabs)
    borderColor: "rgba(0,0,0,0)",

    // custom css to embed in the main window
    css: ``,

    // custom css to embed in the terminal window
    termCSS: `
      x-screen x-row {
        font-variant-ligatures: initial;
      }
    `,

    // set to `true` if you"re using a Linux set up
    // that doesn"t shows native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: "",

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `"left"` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: "",

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: "12px 14px",

    // the full list. if you"re going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: "#000000",
      red: "#c91b00",
      green: "#00c200",
      yellow: "#c7c400",
      blue: "#0225c7",
      magenta: "#ca30c7",
      cyan: "#00c5c7",
      white: "#c7c7c7",
      lightBlack: "#686868",
      lightRed: "#ff6e67",
      lightGreen: "#5ffa68",
      lightYellow: "#fffc67",
      lightBlue: "#6871ff",
      lightMagenta: "#ff77ff",
      lightCyan: "#60fdff",
      lightWhite: "#ffffff"
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system"s login shell will be used by default
    shell: "",

    // for setting shell arguments (i.e. for using interactive shellArgs: ["-i"])
    // by default ["--login"] will be used
    shellArgs: ["--login"],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: "SOUND",

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // URL to custom bell
    // bellSoundURL: "http://example.com/bell.mp3",

    // for advanced config flags please refer to https://hyper.is/#cfg

    overlay: {
      alwaysOnTop: true,
      animate: true,
      hasShadow: false,
      hideDock: false,
      hideOnBlur: true,
      hotkeys: ["Option+/"],
      position: "top",
      primaryDisplay: false,
      resizable: true,
      size: .5,
      startAlone: true,
      startup: false,
      tray: true,
      unique: false
    }
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    "hyperterm-1password",
    "hyperterm-blink",
    "hyperlinks",
    "hyperterm-tab-icons",
    "hyperterm-overlay",
    "hyperterm-paste",
    "hyperterm-alternatescroll",
    "hyperlayout"
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
