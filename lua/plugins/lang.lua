return {
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    -- branch = "develop"
    -- (optional) will update plugin's deps on every update
    build = function()
      vim.cmd.GoInstallDeps()
    end,
    ---@module "gopher"
    ---@type gopher.Config
    opts = {},
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  -- {
  --   "nvim-java/nvim-java",
  --   config = false,
  --   dependencies = {
  --     {
  --       "neovim/nvim-lspconfig",
  --       opts = {
  --         servers = {
  --           -- Your JDTLS configuration goes here
  --           jdtls = {
  --             settings = {
  --               java = {
  --                 configuration = {
  --                   runtimes = {
  --                     {
  --                       name = "jdk21",
  --                       path = os.getenv("JAVA_HOME") or "",
  --                     },
  --                   },
  --                 },
  --               },
  --             },
  --           },
  --         },
  --         setup = {
  --           jdtls = function()
  --             -- Your nvim-java configuration goes here
  --             require("java").setup({
  --               root_markers = {
  --                 "settings.gradle",
  --                 "settings.gradle.kts",
  --                 "pom.xml",
  --                 "build.gradle",
  --                 "mvnw",
  --                 "gradlew",
  --                 "build.gradle",
  --                 "build.gradle.kts",
  --               },
  --             })
  --           end,
  --         },
  --       },
  --     },
  --   },
  -- },
  -- {
  --   "mfussenegger/nvim-jdtls",
  --   enabled = false,
  -- },
}
