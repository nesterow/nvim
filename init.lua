-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.api.nvim_create_user_command("New", function(opts)
  local cmd = "e %:h/" .. opts.args
  vim.cmd(cmd)
end, { nargs = "+", desc = "New file in current directory" })
