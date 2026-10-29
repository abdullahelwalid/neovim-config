require("venv-selector").setup {
        settings = {
          search = {
            my_venvs = {
              command = "fd '/bin/python$' . --full-path",
            },
          },
        },
      }

