return {
  settings = {
    texlab = {
      build = {
        onSave = false,
      },
      forwardSearch = {
        executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
        args = {
          "--synctex-forward",
          "%l:1:%f", -- line 1 is used as column since skim ignores it
          "%p"       -- full path to the PDF
        }
      }
    }
  },
}
