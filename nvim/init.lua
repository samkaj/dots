require('plugins')
require('autocompletions')
require('remap')
require('colors')

local set = vim.opt
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.number = true
set.relativenumber = true
set.clipboard:append("unnamedplus")
