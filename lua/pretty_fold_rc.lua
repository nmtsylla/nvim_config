require('pretty-fold').setup {
  fill_char = '━',
  sections = {
    left = {
      '━ ', function() return string.rep('*', vim.v.foldlevel) end, ' ━┫', 'content', '┣'
    },
    right = {
      '┫ ', 'number_of_folded_lines', ': ', 'percentage', ' ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
    }
  },
  matchup_patterns = {
    { '^%s*do$', 'end' }, -- do ... end blocks
    { '^%s*if', 'end' }, -- if ... end
    { '^%s*for', 'end' }, -- for
    { 'function%s*%(', 'end' }, -- 'function( or 'function (''
    { '{', '}' },
    { '%(', ')' }, -- % to escape lua pattern char
    { '%[', ']' }, -- % to escape lua pattern char
  },
}
require('fold-preview').setup()
