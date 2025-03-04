return {
  'vigoux/ltex-ls.nvim',
  requires = { 'neovim/nvim-lspconfig' },
  config = function()
    require'ltex-ls'.setup {
      use_spellfile = false, -- Uses the value of 'spellfile' as an external file when checking the document
      window_border = 'single', -- How the border should be rendered
      -- Put your lsp config here, just like with nvim-lspconfig
      filetypes = { "latex", "tex", "bib", "markdown", "gitcommit", "text" },
      settings = {
        ltex = {
          enabled = { "latex", "tex", "bib", "markdown", },
          language = "auto",
          diagnosticSeverity = "information",
          sentenceCacheSize = 2000,
          additionalRules = {
            enablePickyRules = true,
            motherTongue = "fr",
          },
          disabledRules = {
            fr = { "APOS_TYP", "FRENCH_WHITESPACE" }
          },
          dictionary = (function()
            -- For dictionary, search for files in the runtime to have
            -- and include them as externals the format for them is
            -- dict/{LANG}.txt
            --
            -- Also add dict/default.txt to all of them
            local files = {}
            for _, file in ipairs(vim.api.nvim_get_runtime_file("dict/*", true)) do
              local lang = vim.fn.fnamemodify(file, ":t:r")
              local fullpath = vim.fs.normalize(file, ":p")
              files[lang] = { ":" .. fullpath }
            end

            if files.default then
              for lang, _ in pairs(files) do
                if lang ~= "default" then
                  vim.list_extend(files[lang], files.default)
                end
              end
              files.default = nil
            end
            return files
          end)(),
        },
      },
    }
  end
}
