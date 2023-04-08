return {
  'mrjones2014/smart-splits.nvim',
  keys = {
    { '<CA-h>',            function() require('smart-splits').resize_left() end },
    { '<CA-j>',            function() require('smart-splits').resize_down() end },
    { '<CA-k>',            function() require('smart-splits').resize_up() end },
    { '<CA-l>',            function() require('smart-splits').resize_right() end },
    { '<C-h>',             function() require('smart-splits').move_cursor_left() end },
    { '<C-j>',             function() require('smart-splits').move_cursor_down() end },
    { '<C-k>',             function() require('smart-splits').move_cursor_up() end },
    { '<C-l>',             function() require('smart-splits').move_cursor_right() end },
    { '<leader><leader>h', function() require('smart-splits').swap_buf_left() end },
    { '<leader><leader>j', function() require('smart-splits').swap_buf_down() end },
    { '<leader><leader>k', function() require('smart-splits').swap_buf_up() end },
    { '<leader><leader>l', function() require('smart-splits').swap_buf_right() end },
  }
}
