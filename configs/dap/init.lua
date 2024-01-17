local dap = require "dap"

require "custom.configs.dap.ui"

local codelldb = require "custom.configs.dap.adapters.codelldb"

dap.adapters.codelldb = codelldb.adapter

dap.configurations.c = codelldb.config
dap.configurations.cpp = codelldb.config
dap.configurations.rust = codelldb.config
