# replace-in-buffer
A simple utility to easily find and replace the word under the cursor in a buffer. 

## Demo
![2025-01-04 17 03 50](https://github.com/user-attachments/assets/b48307f5-47d8-4ea9-ba60-1933f14e7975)

## Installation
Using `lazy.nvim`:

```
require("lazy").setup({
  "matt-taggart/replace-in-buffer"
})
```

Using `packer.nvim`:

```
use({
  "matt-taggart/replace-in-buffer"
})
```

## Commands
`:ReplaceInBuffer` - pulls up a floating window that asks you to enter the text you want to replace the word under the cursor with
