

-- INFO: main function of these is coupling other editors.
local function open_in_vscode()
  local file_path = vim.fn.expand("%:p") -- Get the full file path
  if file_path ~= "" then
    vim.fn.system("code " .. file_path) -- Open in VS Code
  else
    print("No file to open in VS Code!")
  end
end

-- INFO: binding basic things.
vim.keymap.set("n", ";vs", open_in_vscode, { desc = "Open in VS Code" })
