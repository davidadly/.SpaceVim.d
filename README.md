# SpaceVim Configuration

This repository contains SpaceVim configuration files that customize and enhance the SpaceVim experience. The main configuration file is `dark_powered.toml`, and additional custom functions are defined in the `myspacevim#after()` function.

## Features

- Customized colorscheme and UI settings
- Additional custom plugins for various languages and features
- Key mappings and shortcuts for enhanced productivity
- Integration with various tools and plugins, such as:
  - Copilot for AI-assisted coding
  - Vimspector for debugging
  - Neoformat for code formatting
  - Pencil for writing in Markdown and text files
  - Vimwiki for note-taking and personal wiki management
  - LeetCode for practicing coding interview questions

## Prerequisites

- SpaceVim installed on your system
- Various language servers, linters, and formatters installed (e.g., clang-format, yapf, black)
- Python 3 and Anaconda environment set up

## Installation

1. Clone this repository to your local machine.
2. Copy the `dark_powered.toml` file to your SpaceVim configuration directory (usually `~/.SpaceVim.d/`).
3. Add the contents of the `myspacevim#after()` function to your `~/.SpaceVim.d/autoload/myspacevim.vim` file.
4. Restart SpaceVim or run `:source $MYVIMRC` to reload the configuration.

## Plugins

The configuration includes the following plugins:

1. vim-devicons
2. vim-lexical
3. vim-pencil
4. tcomment_vim
5. vim-easyclip
6. vim-snippets
7. coc.nvim
8. vim-rainbow
9. vim-signature
10. vim-surround
11. vim-wakatime
12. vimspector
13. vim-polyglot
14. vim-javascript
15. vim-closetag
16. emmet-vim
17. vim-pug
18. vim-go
19. vim-virtualenv
20. vim-flake8
21. nginx.vim
22. blamer.nvim
23. vim-fugitive
24. vim-gitgutter
25. vim-rhubarb
26. vim-fubitive
27. fzf.vim
28. fzf
29. vim-cyr
30. vim-vue
31. Various colorscheme plugins (e.g., papercolor-theme, vim-colorscheme-switcher, ayu-vim, etc.)
32. copilot.vim
33. firenvim
34. vimwiki
35. vim-rooter
36. black-nvim
37. vim-uncrustify
38. rainbow
39. open-browser.vim
40. vim-gutentags
41. lightline.vim
42. vim-cpp-modern
43. indentLine
44. vim-illuminate
45. devdocs.vim
46. leetcode.vim

## Shortcuts

The configuration provides various key mappings and commands to enhance your coding experience. Some notable mappings include:

- `F3`: Disable Copilot
- `F4`: Enable Copilot
- `F6`: Toggle spell checking
- `F9`: Save the current file and run it with Python
- `F10`: Switch between header and source files in C++
- `<C-J>`: Accept Copilot suggestion
- `<C-c>`: Copy selected text to clipboard
- `<C-x>`: Cut selected text
- `<C-v>`: Paste from clipboard
- `<leader>rs`: Remove trailing whitespace
- `<leader>osx`: Search the word under cursor in cppreference.com
- `<leader>osq`: Search the word under cursor in Qt documentation
- `<A-o>`: Open file explorer (FSHere)
- `<localleader>oh`: Open header/source in left split (FSSplitLeft)
- `<localleader>oj`: Open header/source in bottom split (FSSplitBelow)
- `<localleader>ok`: Open header/source in top split (FSSplitAbove)
- `<localleader>ol`: Open header/source in right split (FSSplitRight)
- `<A-6>`: Toggle Vista outline
- `<localleader>gd`: Launch Vimspector debugger
- `<localleader>gc`: Continue debugging
- `<localleader>gs`: Stop debugging
- `<localleader>gR`: Restart debugging
- `<localleader>gp`: Pause debugging
- `<localleader>gb`: Toggle breakpoint
- `<localleader>gB`: Toggle conditional breakpoint
- `<localleader>gn`: Step over
- `<localleader>gi`: Step into
- `<localleader>go`: Step out
- `<localleader>gr`: Run to cursor
- `<leader>ll`: Open LeetCode problem list
- `<leader>lt`: Run LeetCode test cases
- `<leader>ls`: Submit LeetCode solution
- `<leader>li`: Sign in to LeetCode

Please note that some shortcuts might be specific to certain plugins or layers, and there could be additional shortcuts defined in the configuration that are not explicitly mentioned here.

## Customization

Feel free to customize the configuration files according to your preferences. You can modify colorschemes, add or remove plugins, change key mappings, and adjust various settings to suit your needs.

## Contributing

If you have any suggestions, improvements, or bug fixes, please feel free to open an issue or submit a pull request. Contributions are always welcome!

## License

This configuration is released under the [MIT License](LICENSE).
