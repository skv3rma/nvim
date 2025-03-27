require('bufferline').setup {
  options = {
    style = "padded_slant",
    view = "default",
    numbers = "none",
    number_style = "",
    mappings = true,
    buffer_close_icon = ' ⨯ ',
    modified_icon = '',
    close_icon = ' ⨯ ',
    left_trunc_marker = '  ',
    right_trunc_marker = '  ',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    diagnostics = true,
    diagnostics_indicator = function(count, level)
      return "(" .. count .. ")"
    end,
    show_buffer_close_icons = true,
    show_buffer_icons = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    -- separator_style = { '▋', '' },
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    sort_by = 'relative_directory'
  }
}
