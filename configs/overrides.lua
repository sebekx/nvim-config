local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "cpp",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = {
      "python",
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "deno",
    "prettier",
    
    "clang-format",
    "black",
    "flake8",
    "cmakelang",
    "eslint_d",
    "pyright",
  },
}

M.nvterm = {
  terminals = {
    type_opts = {
      float = {
        width = "0.9",
        height = "0.7",
        row = "0.1",
        col = "0.05",
      },
    },
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },
  diagnostics = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        git = {
          untracked = "",
        },
      },
    },
  },
}

return M
