return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ruby = { "bundle_standard" },
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
