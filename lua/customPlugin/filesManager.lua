-- create files and directory
function createFileWithCustomName()
  local currentFile = vim.fn.expand("%:p")
  local dirPath = vim.fn.fnamemodify(currentFile, ":h")
  local customFileName = vim.fn.input("Enter new file name: ")
  local newFilePath = dirPath .. "/" .. customFileName
  vim.cmd("e " .. newFilePath)
  print("Created Successfully: ", newFilePath)
end

-- Function to delete the current buffer's file
function deleteCurrentBufferFile()
  -- Get the current buffer's file name
  local currentFile = vim.fn.expand("%:p")

  -- Confirm with the user before deleting
  local confirm = vim.fn.input("Delete file: " .. currentFile .. "? (y/n): ")

  if confirm == "y" or confirm == "Y" then
    -- Attempt to delete the file
    local success, errorMessage = os.remove(currentFile)

    if success then
      -- Close the current buffer
      vim.cmd("bdelete!")
      print("File deleted: " .. currentFile)
    else
      print("Error deleting file: " .. errorMessage)
    end
  else
    print("File deletion canceled.")
  end
end
