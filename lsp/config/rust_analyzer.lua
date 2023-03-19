return {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        buildScripts = {
          enable = true,
          overrideCommand = {
            "cargo",
            "clippy",
            "--quiet",
            "--workspace",
            "--message-format=json",
            "--all-targets",
          },
        },
      },
      checkOnSave = {
        enabled = true,
        command = "clippy",
      },
    },
  },
}
