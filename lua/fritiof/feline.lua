local status_ok, feline = pcall(require, "feline")

if not status_ok then return end



feline.setup({
  -- disable = { filetypes = {"^NvimTree$", "^dashboard$" }},
  custom_providers = {
    spacer = function (_, opts) 
      return "  "
    end,
    analog_clock = function ()
      local os = require "os"

      local date = os.date("%H:%M")

      return date
    end
  },
  components = {
    active = {
      {
        {
            provider = 'vi_mode',
            hl = function()
                return {
                    name = require('feline.providers.vi_mode').get_mode_highlight_name(),
                    bg = require('feline.providers.vi_mode').get_mode_color(),
                    --style = 'bold'
                }
            end,
            left_sep = "block",
            right_sep = {"block", 'slant_right', "  "},
            icon = ''
        },
        { provider= "git_branch", hl={fg="#deaef5" ,style="bold"} ,icon = " ",  right_sep="  "},
        { provider= { name = "file_type", opts = { filetype_icon = true, case = "lowercase" } }, right_sep="   " },
        { provider = "git_diff_added", hl = { fg="#00aa88" }, icon = "   " },
        { provider = "git_diff_changed", hl = { fg="#ffcc00" }, icon = "  柳" },
        { provider = "git_diff_removed", hl = { fg="#cc0000" }, icon = "   " },
        { provider= "spacer" },
        { provider = "diagnostic_errors", hl = {fg="#cc0000"}, icon = "  " },
        { provider = "diagnostic_warnings", hl = {fg="#f88f00"}, icon = "  " },
        { provider = "diagnostic_info", hl = {fg="#fff"}, icon = "  " },
        { provider = "diagnostic_hints", hl = {fg="#ffcc00"}, icon = "  " },
      },
      {
        { provider= "analog_clock", hl= { bg="#8899ff" ,fg="white" },  right_sep = "block", left_sep = "block" },
        { provider= "spacer" },
        { provider = "file_encoding" },
        { provider= "spacer" },
        { provider = "position" },
        { provider= "spacer" },
        { provider = "line_percentage" },
        { provider= "spacer" },
        { provider = "scroll_bar" },
        { provider= "spacer" },
      }
    }
  }

})



-- stylua: ignore
--[[
feline.setup(astronvim.user_plugin_opts("plugins.feline", {
  disable = { filetypes = { "^NvimTree$", "^neo%-tree$", "^dashboard$", "^Outline$", "^aerial$" } },
  theme = hl.group("StatusLine", { fg = C.fg, bg = C.bg_1 }),
  components = {
    active = {
      {
        { provider = provider.spacer(), hl = hl.mode() },
        { provider = provider.spacer(2) },
        { provider = "git_branch", hl = hl.fg("Conditional", { fg = C.purple_1, style = "bold" }), icon = " " },
        { provider = provider.spacer(3), enabled = conditional.git_available },
        { provider = { name = "file_type", opts = { filetype_icon = true, case = "lowercase" } }, enabled = conditional.has_filetype },
        { provider = provider.spacer(2), enabled = conditional.has_filetype },
        { provider = "git_diff_added", hl = hl.fg("GitSignsAdd", { fg = C.green }), icon = "  " },
        { provider = "git_diff_changed", hl = hl.fg("GitSignsChange", { fg = C.orange_1 }), icon = " 柳" },
        { provider = "git_diff_removed", hl = hl.fg("GitSignsDelete", { fg = C.red_1 }), icon = "  " },
        { provider = provider.spacer(2), enabled = conditional.git_changed },
        { provider = "diagnostic_errors", hl = hl.fg("DiagnosticError", { fg = C.red_1 }), icon = "  " },
        { provider = "diagnostic_warnings", hl = hl.fg("DiagnosticWarn", { fg = C.orange_1 }), icon = "  " },
        { provider = "diagnostic_info", hl = hl.fg("DiagnosticInfo", { fg = C.white_2 }), icon = "  " },
        { provider = "diagnostic_hints", hl = hl.fg("DiagnosticHint", { fg = C.yellow_1 }), icon = "  " },
      },
      {
        { provider = provider.lsp_progress, enabled = conditional.bar_width() },
        { provider = provider.lsp_client_names(true), short_provider = provider.lsp_client_names(), enabled = conditional.bar_width(), icon = "   " },
        { provider = provider.spacer(2), enabled = conditional.bar_width() },
        { provider = provider.treesitter_status, enabled = conditional.bar_width(), hl = hl.fg("GitSignsAdd", { fg = C.green }) },
        { provider = provider.spacer(2) },
        { provider = "position" },
        { provider = provider.spacer(2) },
        { provider = "line_percentage" },
        { provider = provider.spacer() },
        { provider = "scroll_bar", hl = hl.fg("TypeDef", { fg = C.yellow }) },
        { provider = provider.spacer(2) },
        { provider = provider.spacer(), hl = hl.mode() },
      },
    },
  },
}))
--]]
