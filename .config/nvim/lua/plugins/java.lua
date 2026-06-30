return {
  {
    "nvim-java/nvim-java",
    ft = "java",
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("java").setup({
        root_markers = { "pom.xml", "build.gradle", "settings.gradle", "settings.gradle.kts", ".git" },
        jdk = { auto_install = false },
        spring_boot_tools = { enable = true },
        java_test = { enable = true },
        java_debug_adapter = { enable = true },
        lombok = { enable = true },
        jdtls = {
          settings = {
            java = {
              inlayHints = {
                parameterNames = { enabled = "all" },
              },
              format = { enabled = true },
              sources = {
                organizeImports = {
                  starThreshold = 9999,
                  staticStarThreshold = 9999,
                },
              },
              completion = {
                favoriteStaticMembers = {
                  "org.junit.Assert.*",
                  "org.junit.jupiter.api.Assertions.*",
                  "org.junit.jupiter.api.Assumptions.*",
                  "org.mockito.Mockito.*",
                  "org.mockito.ArgumentMatchers.*",
                  "org.mockito.Answers.*",
                },
              },
            },
          },
        },
      })

      -- Code action keymaps (set on LSP attach)
      vim.api.nvim_create_autocmd("LspAttach", {
        pattern = "*.java",
        callback = function(args)
          local buf = args.buf
          local map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = buf, desc = desc })
          end

          map("n", "<leader>joi", "<cmd>lua require('java').action.source.organise_imports()<cr>", "Organize Imports")
          map("n", "<leader>jev", "<cmd>lua require('java').action.refactor.extract_variable()<cr>", "Extract Variable")
          map("n", "<leader>jem", "<cmd>lua require('java').action.refactor.extract_method()<cr>", "Extract Method")
          map("n", "<leader>jec", "<cmd>lua require('java').action.refactor.extract_constant()<cr>", "Extract Constant")
          map("n", "<leader>jtr", "<cmd>lua require('java').test.run_with_profile()<cr>", "Run Test")
          map("n", "<leader>jtc", "<cmd>lua require('java').test.run_current_class()<cr>", "Run Test Class")
          map("n", "<leader>jtd", "<cmd>lua require('java').test.debug_current_class()<cr>", "Debug Test Class")
          map("n", "<leader>jts", "<cmd>lua require('java').test.view_last_report()<cr>", "Test Report")
          map("n", "<leader>jds", "<cmd>lua require('java').dap.config_dap()<cr>", "DAP Config")
          map("n", "<leader>jbu", "<cmd>lua require('java').build.build_workspace()<cr>", "Build Workspace")
        end,
      })
    end,
  },

  -- which-key groups
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.spec = opts.spec or {}
      table.insert(opts.spec, { "<leader>sj", group = "spring/java", icon = "☕" })
      table.insert(opts.spec, { "<leader>jo", group = "java organize" })
      table.insert(opts.spec, { "<leader>je", group = "java extract" })
      table.insert(opts.spec, { "<leader>jt", group = "java test" })
      table.insert(opts.spec, { "<leader>jd", group = "java dap" })
      table.insert(opts.spec, { "<leader>jb", group = "java build" })
    end,
  },

  -- Spring Boot / Maven terminal runners
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15,
      open_mapping = [[<c-\>]],
      direction = "horizontal",
      close_on_exit = false,
      float_opts = { border = "curved" },
    },
    keys = {
      {
        "<leader>sjr",
        function()
          vim.cmd("silent! wall")
          local Terminal = require("toggleterm.terminal").Terminal
          Terminal:new({ cmd = "set -a && . .env && set +a && mvn spring-boot:run", close_on_exit = false }):toggle()
        end,
        desc = "Spring Boot Run",
      },
      {
        "<leader>sjb",
        function()
          vim.cmd("silent! wall")
          local Terminal = require("toggleterm.terminal").Terminal
          Terminal:new({ cmd = "mvn clean package -DskipTests", close_on_exit = false }):toggle()
        end,
        desc = "Maven Build",
      },
      {
        "<leader>sjt",
        function()
          vim.cmd("silent! wall")
          local Terminal = require("toggleterm.terminal").Terminal
          Terminal:new({ cmd = "mvn test", close_on_exit = false }):toggle()
        end,
        desc = "Maven Test All",
      },
      {
        "<leader>sjc",
        function()
          vim.cmd("silent! wall")
          local Terminal = require("toggleterm.terminal").Terminal
          Terminal:new({ cmd = "mvn clean", close_on_exit = false }):toggle()
        end,
        desc = "Maven Clean",
      },
    },
  },
}
