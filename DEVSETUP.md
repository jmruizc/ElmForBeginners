# Development Environment Setup Steps

1. Install Recent Version of **Nodejs** by downloading and running the installer found at https://nodejs.org/en/ or use the Node Version Manager found at https://github.com/creationix/nvm
2. Install **Elm** by keying the command `npm install -g elm`
3. Install the atom editor located at https://atom.io/
4. Install the **language-elm** using the atom package manager (apm), by keying the command `apm install language-elm`
5. Install **elm-oracle** by keying `npm install -g elm-oracle`
6. Determine the path where the `elm-oracle` command was installed by keying `which elm-oracle` on mac and unix or `where.exe elm-oracle` on windows.  Copy the entire path and file name to the clipboard, for use in the next step
7. Open up Atom, then open up the preferences/settings by pressing `CMD + ,` or via the menu. Click `packages` then filter by `elm`. Find the language-elm package and click the `settings` button. Set the `elm-oracle` setting, by pasting the value we copied in the prior step.
10. Download the current version of **elm-format** found at https://github.com/avh4/elm-format
11. Unzip the downloaded file and move the `elm-format` executable to a location in your PATH variable, such as `mv ~/Downloads/elm-format /usr/local/bin/elm-format`
12. Install the `elm-format` Atom Package *(Note: different from elm-format command)*, by keying `apm install elm-format`
13. Start Atom, Open up Settings `CMD + ,`, click `Packages`, filter by `elm`, then click on the `elm-format` package's `settings` button. Set the `elm-format` command path setting and veryify the `format on save` checkbox is checked.
14. Install atom linter by keying `apm install linter`
15. Install the elm linter by keying `apm install linter-elm-make`
16. Locate and copy the path and file for the `elm-make` command by keying the command `which elm-make` for mac or `where.exe elm-make` on windows.
17. Open the `linter-elm-make` settings page in atom as you did in steps 7 and 13, then click the settings button next to `linter-elm-make` and then set the `elm-make` setting to the copied value from the prior step.

Your atom / elm dev environment should be good to go!

#The Command Line Tools

So we installed Elm, and it gave us elm-repl, elm-reactor, elm-make, and elm-package. But what do they all do exactly?

`elm-repl` lets you play with simple Elm expressions.

`elm-reactor` helps you build Elm projects without messing with the command-line too much. You just run it at the root of your project.
This starts a server at http://localhost:8000. You can navigate to any Elm file and see what it looks like.
  Notable flags:
    `--port` lets you pick something besides port 8000. So you can say elm-reactor --port=8123 to get things to run at http://localhost:8123.
    `--address` lets you replace localhost with some other address. For example, you may want to use elm-reactor --address=0.0.0.0 if you want to try out an Elm program on a mobile device through your local network.

`elm-make` builds Elm projects. It can compile Elm code to HTML or JavaScript. It is the most general way to compile Elm code, so if your project becomes too advanced for elm-reactor, you will want to start using elm-make directly.
  Notable flags:
    `--warn` prints warnings to improve code quality

`elm-package` downloads and publishes packages from Elm package catalog.
  Notable commands:
    1. `install`: install the dependencies in elm-package.json
    2. `publish`: publish your library to the Elm Package Catalog
    3. `bump`: bump version numbers based on API changes
    4. `diff`: get the difference between two APIs
