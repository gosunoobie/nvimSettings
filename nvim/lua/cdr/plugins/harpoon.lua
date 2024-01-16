return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set(
      "n",
      "<leader>hm",
      "<cmd>lua require('harpoon.mark').add_file()<cr>",
      { desc = "Mark file with harpoon" }
    )

    keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })

    keymap.set(
      "n",
      "<leader>hp",
      "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
      { desc = "Go to previous harpoon mark" }
    )

    -- Toggle Harpoon UI
    keymap.set(
      "n",
      "<leader>ht",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      { desc = "Toggle Harpoon UI" }
    )

    -- Additional keymaps for selecting items in the Harpoon list using <leader> + numbers 1-9
    for i = 1, 9 do
      keymap.set("n", "<leader>" .. tostring(i), function()
        require("harpoon.ui").nav_file(i)
      end)
    end
  end,
}
