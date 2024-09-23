local plugins = {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    ft = { "cpp", "py" },
    config = function()
      require "configs.competitest"
    end,
    lazy = false,
  },
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    config = function()
      require("go").setup {
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("GoImport", { clear = true }),
          pattern = "*.go",
          callback = function()
            require("go.format").goimport()
            -- require("go.format").gofmt()
          end,
        }),
      }
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
  },
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
  -- {
  -- 	"simrat39/symbols-outline.nvim",
  -- 	config = function()
  -- 		require("symbols-outline").setup()
  -- 	end,
  -- 	cmd = "SymbolsOutline",
  -- },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          keymap = {
            accept = "<C-l>",
          },
        },
      }
    end,
    enabled = false,
  },
  {
    "wakatime/vim-wakatime",
    lazy = false,
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = "LazyGit",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view. If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    config = function()
      require "configs.notify"
    end,
  },
  {
    "stevearc/dressing.nvim",
    opts = {},
    lazy = false,
  },
  {
    "gennaro-tedesco/nvim-jqx",
    ft = { "json", "yaml" },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup {
        -- your options
      }
    end,
    cmd = "SnipRun",
    enabled = false,
  },
  {
    "h-hg/fcitx.nvim",
    lazy = false,
    enabled = false,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "theHamsta/nvim-dap-virtual-text" },
    enabled = false,
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
    },
    config = function()
      require("auto-save").setup {
        execution_message = {
          enabled = false,
          message = function() -- message to print on save
            return ""
          end,
          dim = 0.18, -- dim the color of `message`
          cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
        },
      }
    end,
    enabled = true,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    lazy = false,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },

  -- rust
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
    ft = { "rs", "rust" },
  },
}

return plugins
