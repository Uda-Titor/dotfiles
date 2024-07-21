local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
  performance = {
    rtp = {
      disabled_plugins = {
        "netrw",
        "netrwPlugin",
        "netrwSettings",
        "netrwFileHandlers",
      },
    },
  },
})

vim.opt.number = true
vim.opt.swapfile = false

require("keymaps")
require'nvim-web-devicons'.get_icons()
require("lspconfig").lua_ls.setup({})

require("cmp").setup {
}
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = {
  actionlint = {},
  cfn_lin = {},
  erb_formatter = {},
  erb_lint = {},
  jq = {},
  lua_laguage_server = {},
  markdownlint = {},
  prettier = {},
  ripper_tags = {},
  rubocop = {},
  ruby_lsp = {},
  rubyfmt = {},
  rufo = {},
  semgrep = {},
  sffmt = {},
  snyk = {},
  sql_formatter = {},
  stylua = {},
  tflint = {},
  typos_lsp = {},
  yaml_language_server = {},
  yamllint = {},
  yamlfmt = {},
  lua_ls = {},
}

-- lspの設定後に追加
vim.opt.completeopt = "menu,menuone,noselect"

local cmp = require"cmp"
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp', group_index = 2  },
    { name = 'cmp_nvim_lsp', group_index = 2 },
    { name = 'copilot', group_index = 2 },
    { name = 'path',group_index = 2  },
    { name = 'luasnip', group_index = 2  }
  })
})

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
      filetypes = (servers[server_name] or {}).filetypes,
    }
  end
}

require("copilot").setup({
  suggestion = { enabled = false },
  panel = { enabled = false },
})
