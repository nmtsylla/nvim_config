local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then return end


bufferline.setup({
  options = {
    mode = "buffers",
    offsets = {
      { filetype = "NvimTree", text = "", padding = 1 },
      { filetype = "Outline", text = "", padding = 1 },
    },
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    -- separator_style = "thin",
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true
  },
  -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
  --   local icon = level:match("error") and " " or " "
  --   return " " .. icon .. count
  -- end,
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      underline = true, undercurl = true, italic = true
    },
    fill = {
      bg = '#073642'
    }
  },
})
--
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
