return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files by default
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          -- "node_modules"
        },
        never_show = {
          -- ".DS_Store",
          -- "thumbs.db"
        },
      },
    },
  },
}
