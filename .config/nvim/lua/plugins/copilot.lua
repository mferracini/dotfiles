local chat = require("CopilotChat")


return chat.setup(
  {
  prompts = {
    DocsPythonSphinx= {
      prompt = '/COPILOT_GENERATE Please add documentation comment using sphinx format for the selection.',
      description = 'Generate documentation comment using sphinx format for the selection.',
      mapping = '<leader>ads',
    },
  },
}
)
