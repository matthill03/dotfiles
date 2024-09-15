return {
  "Djancyp/better-comments.nvim",
  config = function()
    require("better-comment").Setup({
      tags = {
        {
            name = "TODO",
            fg = "white",
            bg = "#0a7aca",
            bold = true,
            virtual_text = "",
        },
        {
            name = "FIX",
            fg = "#6dd544",
            bg = "",
            bold = true,
            virtual_text = "󰁨",
        },
        {
            name = "WARNING",
            fg = "#FFA500",
            bg = "",
            bold = false,
            virtual_text = "",
        },
        {
            name = "!",
            fg = "#f44747",
            bg = "",
            bold = true,
            virtual_text = "",
        },
        {
          name = "NOTE",
          fg = "#44b6d5",
          bg = "",
          bold = false,
          virtual_text = "󱞁",
        }
      }
    })
  end
}
-- FIX
-- WARNING
-- !
-- NOTE
--
