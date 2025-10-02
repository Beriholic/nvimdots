return {
  {
    "nvim-java/nvim-java",
    config = false,
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            -- Your JDTLS configuration goes here
            --   jdtls = {
            --     settings = {
            --       java = {
            --         configuration = {
            --           runtimes = {
            --             {
            --               name = "jdk21",
            --               path = os.getenv("JAVA_HOME"),
            --             },
            --           },
            --         },
            --       },
            --     },
            --   },
          },
          setup = {
            jdtls = function()
              -- Your nvim-java configuration goes here
              require("java").setup({
                -- root_markers = {
                --   "settings.gradle",
                --   "settings.gradle.kts",
                --   "pom.xml",
                --   "build.gradle",
                --   "mvnw",
                --   "gradlew",
                --   "build.gradle",
                --   "build.gradle.kts",
                -- },
              })
            end,
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
    enabled = false,
  },
}
