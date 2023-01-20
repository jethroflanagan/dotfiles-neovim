return function(use)
  use { 'feline-nvim/feline.nvim',
    config = function()

      local feline = require("feline")

      local one_monokai = {
        fg = "#abb2bf",
        bg = "#1e2024",
        green = "#98c379",
        yellow = "#e5c07b",
        purple = "#c678dd",
        orange = "#d19a66",
        peanut = "#f6d5a4",
        red = "#e06c75",
        aqua = "#61afef",
        darkblue = "#282c34",
        dark_red = "#f75f5f",
      }

      local vi_mode_colors = {
        NORMAL = "green",
        OP = "green",
        INSERT = "yellow",
        VISUAL = "purple",
        LINES = "orange",
        BLOCK = "dark_red",
        REPLACE = "red",
        COMMAND = "aqua",
      }
      local theme = {
        aqua = "#7AB0DF",
        bg = "#1C212A",
        blue = "#5FB0FC",
        cyan = "#70C0BA",
        darkred = "#FB7373",
        fg = "#C7C7CA",
        gray = "#222730",
        green = "#79DCAA",
        lime = "#54CED6",
        orange = "#FFD064",
        pink = "#D997C8",
        purple = "#C397D8",
        red = "#F87070",
        yellow = "#FFE59E"
      }

      local mode_theme = {
        ["NORMAL"] = theme.green,
        ["OP"] = theme.cyan,
        ["INSERT"] = theme.aqua,
        ["VISUAL"] = theme.yellow,
        ["LINES"] = theme.darkred,
        ["BLOCK"] = theme.orange,
        ["REPLACE"] = theme.purple,
        ["V-REPLACE"] = theme.pink,
        ["ENTER"] = theme.pink,
        ["MORE"] = theme.pink,
        ["SELECT"] = theme.darkred,
        ["SHELL"] = theme.cyan,
        ["TERM"] = theme.lime,
        ["NONE"] = theme.gray,
        ["COMMAND"] = theme.blue,
      }

      -- vertical_bar	'┃'
      -- vertical_bar_thin	'│'
      -- left	''
      -- right	''
      -- block	'█'
      -- left_filled	''
      -- right_filled	''
      -- slant_left	''
      -- slant_left_thin	''
      -- slant_right	''
      -- slant_right_thin	''
      -- slant_left_2	''
      -- slant_left_2_thin	''
      -- slant_right_2	''
      -- slant_right_2_thin	''
      -- left_rounded	''
      -- left_rounded_thin	''
      -- right_rounded	''
      -- right_rounded_thin	''
      -- circle	'●'
      local c = {
        vim_mode = {
          -- provider = {
          -- 	name = "vi_mode",
          --  	opts = {
          -- 		show_mode_name = true,
          -- 		-- padding = "center", -- Uncomment for extra padding.
          -- 	},
          -- },
          provider = function()
            return '█' -- vim.api.nvim_get_mode().mode:upper()
          end,
          hl = function()
            return {
              bg = 'bg', -- r-e--quire("feline.providers.vi_mode").get_mode_color(),
              fg = require("feline.providers.vi_mode").get_mode_color(),
              style = "bold",
              name = "NeovimModeHLColor",
            }
          end,
          left_sep = "block",
          right_sep = "block",
        },
        gitBranch = {
          provider = "git_branch",
          hl = {
            fg = "peanut",
            bg = "darkblue",
            style = "bold",
          },
          left_sep = "block",
          right_sep = "block",
        },
        gitDiffAdded = {
          provider = "git_diff_added",
          hl = {
            fg = "green",
            bg = "darkblue",
          },
          left_sep = "block",
          right_sep = "block",
        },
        gitDiffRemoved = {
          provider = "git_diff_removed",
          hl = {
            fg = "red",
            bg = "darkblue",
          },
          left_sep = "block",
          right_sep = "block",
        },
        gitDiffChanged = {
          provider = "git_diff_changed",
          hl = {
            fg = "fg",
            bg = "darkblue",
          },
          left_sep = "block",
          right_sep = "right_filled",
        },
        separator = {
          provider = "",
        },
        fileinfo = {
          provider = {
            name = "file_info",
            opts = {
              type = "relative",
            },
          },
          hl = {
            style = "bold",
          },
          left_sep = " ",
          right_sep = " ",
        },
        diagnostic_errors = {
          provider = "diagnostic_errors",
          hl = {
            fg = "red",
          },
        },
        diagnostic_warnings = {
          provider = "diagnostic_warnings",
          hl = {
            fg = "yellow",
          },
        },
        diagnostic_hints = {
          provider = "diagnostic_hints",
          hl = {
            fg = "aqua",
          },
        },
        diagnostic_info = {
          provider = "diagnostic_info",
        },
        lsp_client_names = {
          provider = "lsp_client_names",
          hl = {
            fg = "purple",
            bg = "darkblue",
            style = "bold",
          },
          left_sep = "left_filled",
          right_sep = "block",
        },
        file_type = {
          provider = {
            name = "file_type",
            opts = {
              filetype_icon = true,
              case = "titlecase",
            },
          },
          hl = {
            fg = "red",
            bg = "darkblue",
            style = "bold",
          },
          left_sep = "block",
          right_sep = "block",
        },
        file_encoding = {
          provider = "file_encoding",
          hl = {
            fg = "orange",
            bg = "darkblue",
            style = "italic",
          },
          left_sep = "block",
          right_sep = "block",
        },
        position = {
          provider = "position",
          hl = {
            fg = "green",
            bg = "darkblue",
            style = "bold",
          },
          left_sep = "block",
          right_sep = "block",
        },
        line_percentage = {
          provider = "line_percentage",
          hl = {
            fg = "aqua",
            bg = "darkblue",
            style = "bold",
          },
          left_sep = "block",
          right_sep = "block",
        },
        scroll_bar = {
          provider = "scroll_bar",
          hl = {
            fg = "yellow",
            style = "bold",
          },
        },
      }

      local left = {
        c.vim_mode,
        c.gitBranch,
        c.gitDiffAdded,
        c.gitDiffRemoved,
        c.gitDiffChanged,
        c.separator,
      }

      local middle = {
        c.fileinfo,
        c.diagnostic_errors,
        c.diagnostic_warnings,
        c.diagnostic_info,
        c.diagnostic_hints,
      }

      local right = {
        -- c.lsp_client_names,
        c.file_type,
        -- c.file_encoding,
        c.position,
        -- c.line_percentage,
        -- c.scroll_bar,
      }

      local components = {
        active = {
          left,
          middle,
          right,
        },
        inactive = {
          left,
          middle,
          right,
        },
      }

      feline.setup({
        components = components,
        theme = one_monokai,
        vi_mode_colors = vi_mode_colors,
      })
    end
  }
end
