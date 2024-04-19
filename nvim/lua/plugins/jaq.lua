require('jaq-nvim').setup{
  cmds = {
    external = {
      tex = "latexmk -pv % && latexmk -c %"
    }
  },

  behavior = {
    default = "float",
    wincmd = true
  },

  ui = {
    float = {
      height = 0.1,
      width = 0.35,
      x = 1.0,
      y = 0.97
    }
  }
}
