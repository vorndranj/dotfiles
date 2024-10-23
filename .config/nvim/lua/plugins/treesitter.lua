return { 
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    require "nvim-treesitter.configs".setup {  
      ensure_installed = { 
        "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", 
        "c", "python", "java", "javascript", "json", "yaml", "xml", 
        "typescript", "tsx", "tmux", "toml", "terraform", "css", "styled",
        "html", "sql", "scss", "regex", "properties", "kotlin", "groovy", 
        "dockerfile" 
      },
      highlight = { enable = true },
      indent = { enable = true }
    }
  end
}
