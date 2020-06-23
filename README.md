# intellisurround.vim

Intelligent surrounder for vim

This plugin allows you to surround any characters/strings with less key typings.

## Installation

**vim-plug**

```vim
Plug 'kuro46/intellisurround.vim'
```

## Usage examples

When press `(`, `)` is added automatically
and cursor position is between `(` and `)`.
You can exit brakets via press `)`.

## Customization

```vim
call intellisurround#register('(', ')')
```
