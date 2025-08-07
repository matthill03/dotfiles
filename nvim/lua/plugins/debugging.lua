return {
    { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            local dapview = require("dapui")
            dapview.setup()

            dap.listeners.before.attach.dapui_config = function()
                dapview.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapview.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapview.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapview.close()
            end

            vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
            vim.keymap.set("n", "<Leader>dc", dap.continue, {})

            dap.adapters.lldb = {
                type = "executable",
                command = "/opt/homebrew/opt/llvm/bin/lldb-dap",
                name = "lldb",
            }
            dap.configurations.c = {
                {
                    name = "Launch",
                    type = "lldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                    end,
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                    args = {},
                },
            }
        end,
    },
}
