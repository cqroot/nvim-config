vim.g.nvim_tree_side = "left"
vim.g.nvim_tree_width = 30 -- 30 by default
vim.g.nvim_tree_ignore = {".git", "node_modules", ".cache", "*.pyc", "__pycache__", ".pytest_cache"}
vim.g.nvim_tree_auto_open = 0 -- 0 by default, opens the tree when typing `vim $DIR` or `vim`
vim.g.nvim_tree_auto_close = 1 -- 0 by default, closes the tree when it's the last window
vim.g.nvim_tree_quit_on_open = 0 -- 0 by default, closes the tree when you open a file
vim.g.nvim_tree_follow = 1 -- 0 by default, this option allows the cursor to be updated when entering a buffer
vim.g.nvim_tree_indent_markers = 1 -- 0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_hide_dotfiles = 0 -- 0 by default, this option hides files and folders starting with a dot `.`
vim.g.nvim_tree_git_hl = 0 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_root_folder_modifier = ":~" -- This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_tab_open = 1 -- 0 by default, will open the tree when entering a new tab and the tree was previously open
vim.g.nvim_tree_width_allow_resize = 1 -- 0 by default, will not resize the tree when opening a file
vim.g.nvim_tree_disable_netrw = 1 -- 1 by default, disables netrw
vim.g.nvim_tree_hijack_netrw = 1 -- 1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
vim.g.nvim_tree_add_trailing = 0 -- 0 by default, append a trailing slash to folder names
vim.g.nvim_tree_show_icons = {
    git = 0,
    folders = 1,
    files = 1
}
-- If 0, do not show the icons for one of 'git' 'folder' and 'files'
-- 1 by default, notice that if 'files' is 1, it will only display
-- if nvim-web-devicons is installed and on your runtimepath

vim.g.nvim_tree_icons = {
    default = "",
    symlink = ""
}
vim.g.nvim_tree_special_files = {} -- List of filenames that gets highlighted with NvimTreeSpecialFile
vim.g.nvim_tree_window_picker_exclude = {
    filetype = {
        "notify",
        "packer",
        "qf",
        "Outline"
    },
    buftype = {
        "terminal"
    }
}
