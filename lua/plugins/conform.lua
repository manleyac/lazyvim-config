return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ruby = { "bundle_standard" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
    },
    formatters = {
      bundle_standard = {
        command = "bundle",
        args = { "exec", "standardrb", "--stdin", "$FILENAME", "--fix", "--stderr" },
        stdin = true,
        cwd = require("conform.util").root_file({ ".ruby-version", "Gemfile" }),
        exit_codes = { 0, 1 }, -- StandardRB exits with 1 when it makes changes
      },
    },
  },
}
