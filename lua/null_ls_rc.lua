
local null_ls = require("null-ls")
require("null-ls").setup({
  sources = {
    -- require("null-ls").builtins.formatting.stylua,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
    -- null_ls.builtins.code_actions.refactoring,
    null_ls.builtins.diagnostics.jsonlint,
  },
})
