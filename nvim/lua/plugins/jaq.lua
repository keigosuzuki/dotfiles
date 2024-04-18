require('jaq-nvim').setup{
  cmds = {
    external = {
      tex = "latexmk -pv % && latexmk -c %"
    }
  },

  behavior = {
    default = "terminal"
  },

  ui = {
    terminal = {
      position = "bot",
      size = 0,
      line_no = false
    }
  }
}
