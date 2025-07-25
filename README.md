# vim-lsp-settings

[![Actions Status](https://github.com/mattn/vim-lsp-settings/workflows/reviewdog/badge.svg)](https://github.com/mattn/vim-lsp-settings/actions)
[![Actions Status](https://github.com/mattn/vim-lsp-settings/workflows/ci/badge.svg)](https://github.com/mattn/vim-lsp-settings/actions)

Auto configurations for Language Servers for [vim-lsp](https://github.com/prabirshrestha/vim-lsp).

## Introduction

Language Servers are not easy to install. Visual Studio Code provides easy ways to install and update Language Servers and Language Server Client. This plugin provides the same feature for Vim.

## Installation

Using the [vim-plug](https://github.com/junegunn/vim-plug) plugin manager:

```viml
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
```

You need to install both [vim-lsp](https://github.com/prabirshrestha/vim-lsp) and vim-lsp-settings.

## Usage

While editing a file with a supported filetype:

```
:LspInstallServer
```

To uninstall server:

```
:LspUninstallServer server-name
```

Because there is no way to update a server, please run `:LspInstallServer` again, the newer version will be installed.


### Auto-complete

If you want to use auto-completion, you can use one of the following.

#### asyncomplete.vim
```viml
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
```

#### ddc.vim
```viml
Plug 'Shougo/ddc.vim'
Plug 'shun/ddc-vim-lsp'
```

### LSP server download directory

This is where LSP servers are placed on your system after you download them with `:LspInstallServer`

#### Windows

```
%LOCALAPPDATA%\vim-lsp-settings\servers
```

#### MacOS/Linux

```
$HOME/.local/share/vim-lsp-settings/servers
```

If you define `$XDG_DATA_HOME`:

```
$XDG_DATA_HOME/vim-lsp-settings/servers
```

You can change the directory to install servers by set `g:lsp_settings_servers_dir` option in full path.

## Supported Languages

| Language          | Language Server                     | Installer | Local Install |
| ----------------- | ----------------------------------- | :-------: | :-----------: |
| Apex/VisualForce  | apex-jorje-lsp                      |    Yes    |      Yes      |
| Astro             | astro-ls                            |    Yes    |      Yes      |
| Astro             | biome                               |    Yes    |      Yes      |
| Bash              | bash-language-server                |    Yes    |      Yes      |
| C#                | omnisharp                           |    Yes    |      Yes      |
| C/C++             | clangd                              |    Yes    |      Yes      |
| COBOL             | cobol-language-support              |    Yes    |      Yes      |
| CSS               | css-languageserver                  |    Yes    |      Yes      |
| CSS               | tailwindcss-intellisense            |    Yes    |      Yes      |
| Clojure           | clojure-lsp                         |    Yes    |      Yes      |
| Clojure           | clj-kondo-lsp                       |    Yes    |      Yes      |
| Cmake             | cmake-language-server               |    Yes    |      Yes      |
| D                 | dls                                 |    Yes    |      No       |
| D                 | serve-d                             |    Yes    |      No       |
| Dart              | analysis-server-dart-snapshot       |    Yes    |      Yes      |
| Dockerfile        | dockerfile-language-server-nodejs   |    Yes    |      Yes      |
| Dot               | dot-language-server                 |    Yes    |      Yes      |
| Elixir            | elixir-ls                           |    Yes    |      Yes      |
| Elm               | elm-language-server                 |    Yes    |      Yes      |
| Erlang            | erlang-ls                           |    Yes    |      Yes      |
| F#                | fsautocomplete                      |    Yes    |      Yes      |
| F#                | fsharp-language-server              |    Yes    |      Yes      |
| Fennel            | fennel-ls                           |    Yes    |      Yes      |
| Fortran           | fortls                              |    Yes    |      Yes      |
| Go                | gopls                               |    Yes    |      Yes      |
| Go                | golangci-lint-langserver            |    Yes    |      Yes      |
| GraphQL           | graphql-language-service-cli        |    Yes    |      Yes      |
| GraphQL           | gql-language-server                 |    Yes    |      Yes      |
| Groovy            | groovy-language-server              |    Yes    |      Yes      |
| Haskell           | haskell-ide-engine                  |    No     |      No       |
| Haskell           | haskell-language-server             |    No     |      No       |
| Helm              | helm-ls                             |    Yes    |      Yes      |
| HTML              | html-languageserver                 |    Yes    |      Yes      |
| HTML              | angular-language-server             |    Yes    |      Yes      |
| HTML              | tailwindcss-intellisense            |    Yes    |      Yes      |
| Hy                | hyuga                               |    Yes    |      No       |
| JSON              | json-languageserver                 |    Yes    |      Yes      |
| JSON              | rome                                |    Yes    |      Yes      |
| JSON              | biome                               |    Yes    |      Yes      |
| Jsonnet           | jsonnet-language-server             |    Yes    |      Yes      |
| Java              | eclipse-jdt-ls                      |    Yes    |      Yes      |
| Java              | java-language-server                |    No     |      Yes      |
| JavaScript        | typescript-language-server          |    Yes    |      Yes      |
| JavaScript        | vtsls                               |    Yes    |      Yes      |
| JavaScript        | javascript-typescript-stdio         |    Yes    |      Yes      |
| JavaScript        | rome                                |    Yes    |      Yes      |
| JavaScript        | flow                                |    Yes    |      Yes      |
| JavaScript        | eslint-language-server              |    Yes    |      Yes      |
| JavaScript        | biome                               |    Yes    |      Yes      |
| Julia             | LanguageServer.jl                   |    Yes    |      No       |
| Kotlin            | kotlin-language-server              |    Yes    |      Yes      |
| Lisp              | cl-lsp                              |    Yes    |      No       |
| Lua               | emmylua-ls                          |    Yes    |      Yes      |
| Lua               | sumneko-lua-language-server         |    Yes    |      Yes      |
| Markdown (remark) | remark-language-server              |    Yes    |      Yes      |
| Markdown          | Marksman                            |    Yes    |      Yes      |
| Nim               | nimls                               |    No     |      No       |
| Nix               | nixd                                |    Yes    |      Yes      |
| Nix               | nil                                 |    Yes    |      Yes      |
| PHP               | intelephense                        |    Yes    |      Yes      |
| PHP               | psalm-language-server               |    Yes    |      Yes      |
| OCaml             | ocaml-lsp                           | UNIX Only |      Yes      |
| Protobuf          | bufls                               |    Yes    |      Yes      |
| Puppet            | puppet-languageserver               |    Yes    |      Yes      |
| PureScript        | purescript-language-server          |    Yes    |      Yes      |
| Python            | pyls-all (pyls with dependencies)   |    Yes    |      Yes      |
| Python            | pyls (pyls without dependencies)    |    Yes    |      Yes      |
| Python            | pyls-ms (Microsoft Version)         |    Yes    |      Yes      |
| Python            | jedi-language-server                |    Yes    |      Yes      |
| Python            | pyright-langserver                  |    Yes    |      Yes      |
| Python            | pylsp-all (pylsp with dependencies) |    Yes    |      Yes      |
| Python            | pylsp (pylsp without dependencies)  |    Yes    |      Yes      |
| Python            | pylyzer                             |    Yes    |      Yes      |
| Python            | ruff                                |    Yes    |      Yes      |
| Python            | ruff-lsp                            |    Yes    |      Yes      |
| Python            | ty                                  |    Yes    |      Yes      |
| Prisma            | prisma-language-server              |    Yes    |      Yes      |
| Qml               | qmlls                               |    Yes    |      Yes      |
| R                 | languageserver                      |    Yes    |      No       |
| Racket            | racket-lsp                          |    Yes    |      No       |
| Reason            | reason-language-server              |    Yes    |      Yes      |
| Ruby              | ruby-lsp                            | UNIX Only |      Yes      |
| Ruby              | solargraph                          |    Yes    |      Yes      |
| Ruby              | steep                               |    Yes    |      Yes      |
| Ruby              | typeprof                            |    Yes    |      Yes      |
| Ruby              | rubocop (lsp mode)                  |    Yes    |      No       |
| Ruby              | sorbet                              |    Yes    |      No       |
| Rust              | rls                                 |    Yes    |      No       |
| Rust              | rust-analyzer                       |    Yes    |      Yes      |
| Rust              | bacon-ls                            |    Yes    |      Yes      |
| Sphinx            | esbonio                             |    Yes    |      Yes      |
| SQL               | sql-language-server                 |    Yes    |      Yes      |
| SQL               | sqls                                |    Yes    |      Yes      |
| SQL               | plpgsql-server                      | UNIX Only |      Yes      |
| Starlark          | starpls                             |    Yes    |      Yes      |
| Scala             | Metals                              |    Yes    |      Yes      |
| Svelte            | svelte-language-server              |    Yes    |      Yes      |
| Svelte            | tailwindcss-intellisense            |    Yes    |      Yes      |
| Svelte            | biome                               |    Yes    |      Yes      |
| Swift             | sourcekit-lsp                       |    Yes    |      No       |
| systemd           | systemd-lsp                         | UNIX Only |      Yes      |
| SystemVerilog     | verible-verilog-ls                  | UNIX Only |      Yes      |
| SystemVerilog     | svls                                |    Yes    |      Yes      |
| TeX               | texlab                              |    Yes    |      Yes      |
| TeX               | digestif                            |    Yes    |      No       |
| Terraform         | terraform-lsp                       |    Yes    |      Yes      |
| Terraform         | terraform-ls                        |    Yes    |      Yes      |
| TOML              | taplo-lsp                           |    No     |      Yes      |
| TTCN-3            | ntt                                 |    Yes    |      Yes      |
| TypeScript        | typescript-language-server          |    Yes    |      Yes      |
| TypeScript        | vtsls                               |    Yes    |      Yes      |
| TypeScript        | deno                                |    Yes    |      Yes      |
| TypeScript        | rome                                |    Yes    |      Yes      |
| TypeScript        | eslint-language-server              |    Yes    |      Yes      |
| TypeScript        | biome                               |    Yes    |      Yes      |
| Typst             | typst-lsp                           |    Yes    |      Yes      |
| Typst             | tinymist                            |    Yes    |      Yes      |
| Vim               | vim-language-server                 |    Yes    |      Yes      |
| Vala              | vala-language-server                |    No     |      No       |
| Verilog           | verible-verilog-ls                  | UNIX Only |      Yes      |
| Veryl             | veryl-ls                            |    Yes    |      Yes      |
| Vue               | volar-server (Vue Language Tools)   |    Yes    |      Yes      |
| Vue               | vls                                 |    Yes    |      Yes      |
| Vue               | biome                               |    Yes    |      Yes      |
| V                 | v-analyzer                          |    Yes    |      Yes      |
| V                 | vlang-vls                           |    Yes    |      Yes      |
| XML               | lemminx                             |    Yes    |      Yes      |
| YAML              | yaml-language-server                |    Yes    |      Yes      |
| YAML              | aws-lsp-yaml                        |    Yes    |      Yes      |
| YANG              | yang-lsp                            |    Yes    |      Yes      |
| ZIG               | zls                                 |    Yes    |      Yes      |
| \*                | efm-langserver                      |    Yes    |      Yes      |
| \*                | typos-lsp                           |    Yes    |      Yes      |

## Notes

### clangd (C/C++)

There is a Linux OS/version that does not run the locally installed `clangd` due to zlib version mismatch. If you want to use `clangd`, please install `clangd` on your system.

### rls (Rust)

If you installed `rls` already, you can use `rls` without configurations. But if you have not installed `rls` yet, you can install it by following [these instructions](https://github.com/rust-lang/rls#setup).

### [rust-analyzer](https://rust-analyzer.github.io/)

If you want to configure many of the [`rust-analyzer` configuration
options](https://rust-analyzer.github.io/manual.html#configuration), you need
to you insert a `initialization_options` dictionary between `rust-analyzer` and
subdictionaries (`cargo`, `completion`, `procMacro`, etc.) in your
`.vim-lsp-settings/settings.json`.
```json
{
    "rust-analyzer": {
        "initialization_options": {
            "server.extraEnv": {
                "RUSTUP_TOOLCHAIN": "nightly"
            },
            "cargo": {
                "target": "aarch64-apple-ios-sim"
            },
            "completion": { "autoimport": {"enable": false } },
            "procMacro": { "enable": true }
        }
    }
}
```

#### [LSP Extensions Support](https://github.com/rust-lang/rust-analyzer/blob/master/docs/dev/lsp-extensions.md)

| Extension Name                  | Status |
| ------------------------------- | ------ |
| initializationOptions           | ❓     |
| Snippet TextEdit                | ❌     |
| CodeAction Groups               | ❌     |
| Parent Module                   | ❌     |
| Join Lines                      | ✔️     |
| On Enter                        | ❌     |
| Structural Search Replace (SSR) | ❌     |
| Matching Brace                  | ✔️     |
| Runnables                       | ❌     |
| Test explorer                   | ❌     |
| Open External Documentation     | ✔️     |
| Analyzer Status                 | ✔️     |
| Reload Workspace                | ✔️     |
| Rebuild proc-macros             | ❌     |
| Unindexed Project               | ❌     |
| Server Status                   | ❌     |
| Syntax Tree                     | ❌     |
| View Hir                        | ❌     |
| View Mir                        | ❌     |
| Interpret Function              | ❌     |
| View File Text                  | ❌     |
| View ItemTree                   | ❌     |
| View Crate Graph                | ❌     |
| Shuffle Crate Graph             | ❌     |
| Expand Macro                    | ✔️     |
| Hover Actions                   | ❌     |
| Open Cargo.toml                 | ✔️     |
| Related tests                   | ❌     |
| Hover Range                     | ❌     |
| Move Item                       | ❌     |
| Workspace Symbols Filtering     | ❌     |
| Client Commands                 | ❌     |
| Colored Diagnostic Output       | ❌     |
| Dependency Tree                 | ❌     |
| View Recursive Memory Layout    | ❌     |

### [bacon-ls](https://github.com/crisidev/bacon-ls) (Rust)

The `bacon` command is required. If not exists, it will be installed globally.

`bacon-ls` is not a replacement for `rust-analyzer`, they can be used together. The workspace folders feature is required. Therefore, the following configuration is necessary:
```vim
let g:lsp_experimental_workspace_folders = 1
let g:lsp_settings_filetype_rust = ['rust-analyzer', 'bacon-ls']
let g:lsp_settings = {
\ 'rust-analyzer': {
\   'initialization_options': {
\     'checkOnSave': v:false,
\     'diagnostics': v:false,
\   },
\}
```

For detailed configuration options, please refer to the [`bacon-ls` configuration documentation](https://github.com/crisidev/bacon-ls/blob/main/README.md#configuration).

### deno (TypeScript)

To use deno, `deno.json(c)` should located on the project directory or traversing the filesystem upwards.

If `deno.json` does not located, `node_modules` should **not** located on the project directory or traversing the filesystem upwards.

When editing Node projects, the following warning message is shown.

`server "deno" is disabled since "node_modules" is found`

If you want to disable warning message, you may put `.vim-lsp-settings/settings.json` in your project root directory.

```json
{
  "deno": {
    "disabled": true
  }
}
```

To use importMap, default file name is `import_map.json`.

If you don't want to use `import_map.json`, you may put `.vim-lsp-settings/settings.json` in your project root directory and set importMap whatever you want.

```
{
  "deno": {
    "initialization_options": {
      "enable": true,
      "lint": true,
      "unstable": true,
      "importMap": "your_own_import_map.json"
    }
  }
}
```

Recommend to add `let g:markdown_fenced_languages = ['ts=typescript']` to your
vimrc for hover(preview) Deno's library.

Note that `deno` language server is specified.

```vim
let g:lsp_settings_filetype_typescript = ['typescript-language-server', 'eslint-language-server', 'deno']
```

### flow (JavaScript)

To use flow, the `.flowconfig` has to be located on the top of project directory.

### graphql-language-service-cli(GraphQL)

To use graphql-language-service-cli, the [GraphQL Config](https://graphql-config.com/introduction#examples) has to be located on the top of project directory. The schema must be pointed to the schema file correctly.

```json
{
  "schema": "./schema.graphql"
}
```

### gql-language-server (GraphQL)

To use gql-language-server, the `.gqlconfig` has to be located on the top of project directory. The schema must be pointed to the schema file correctly.

```json5
{
  schema: {
    files: 'path/to/schema.graphql'
  }
}
```

Finally, you have to install `@playlyfe/gql` into your project.

```
$ npm install @playlyfe/gql --save-dev
```

### [dart analysis server](https://github.com/dart-lang/sdk/tree/master/pkg/analysis_server) (Dart)

If you have a separate existing installation of the dart analysis server and
want it to be used, it must either exist in your path, or you must specify its
location. See 'Configurations' below.

### [haskell ide engine](https://github.com/haskell/haskell-ide-engine) (Haskell)

If you installed `hie` with stack, you can use hie without configurations.
But if you have not installed `hie` yet, you can install it by following [these steps](https://github.com/haskell/haskell-ide-engine#installation).

### [golangci-lint-langserver](https://github.com/nametake/golangci-lint-langserver) (Go)

To use older version `golangci-lint`, please run `:LspSettingsGlobalEdit` and put bellow configuration.

```json5
"golangci-lint-langserver": {
    "initialization_options": {
        "command": [
            "golangci-lint", "run", "--enable-all", "--disable", "lll", "--out-format", "json"
        ]
    }
}
```

### [kotlin-language-server](https://github.com/fwcd/kotlin-language-server)

To resolve issue about proper '-jvm-target' (INLINE_FROM_HIGHER_PLATFORM) [read
more](https://github.com/fwcd/kotlin-language-server/issues/72)

```vim
let g:lsp_settings = {
\  'kotlin-language-server': {
\    'workspace_config': {
\      'kotlin': {'compiler': {'jvm': {'target': '17'}}}
\    }
\  }
\}
```
### [qmlls](https://doc.qt.io/qt-6/qtqml-tooling-qmlls.html)

To use the language server you need a .qmlls.ini, which can be generated
automatically. Additionally, you have to configure your the qml include
directories from the qt install root.
```vim
 let g:lsp_settings = {
 \  'qmlls': {
 \    'args': ['-I', '[QTROOT]/qml'],
 \  },
 \}

 By default, the qmlls server will search the QML_IMPORT PATH (-E option).
```

### [rubocop lsp mode (Ruby)](https://docs.rubocop.org/rubocop/usage/lsp.html)

To use rubocop-lsp-mode, you need to install rubocop in your Ruby project using bundler.

### [sorbet (Ruby)](https://sorbet.org/docs/vscode)

To use sorbet, you need to install rubocop in your Ruby project using bundler.
Also, [Watchman](https://facebook.github.io/watchman/) is required to watch file changes.
For more details, please see [Sorbet](https://sorbet.org/docs/vscode#installing-and-enabling-the-sorbet-extension) and [Watchman](https://facebook.github.io/watchman/docs/install.html) documentations.

### [volar (Vue Language Tools)](https://github.com/vuejs/language-tools)

Vue Language Tools v3 works only with `vtsls`, which is another TypeScript Language Server implementation.
So, you need to install both `vtsls` and `volar-server` and specify them to be used with the following code:

```vim
let g:lsp_settings_filetype_vue = ['vtsls', 'volar-server']
let g:lsp_settings_filetype_typescript = ['vtsls']
```

## Extra Configurations

Most of the configurations are not required.

If you installed `clangd` already, you can use `clangd` for C/C++ without any configuration. But if you installed `clang` with the name` clangd-6.0`, you can replace executable with the following config:

```vim
let g:lsp_settings = {
\  'clangd': {'cmd': ['clangd-6.0']},
\  'efm-langserver': {'disabled': v:false}
\}
```

Or put `.vim-lsp-settings/settings.json` in your project root directory.

```json
{
  "clangd": {
    "cmd": ["clangd-6.0"]
  },
  "efm-langserver": {
    "disabled": false
  }
}
```

If you already have the dart analysis server installed but it is not in your
path, you can still configure the settings to use it. Use the vimscript below
to change the command to start the server. Note the command has two parts:
the path to your 'dart' executable, and a subcommand 'language-server.

```vimscript
let g:lsp_settings = {
    \ 'analysis-server-dart-snapshot': {
    \     'cmd': [
    \         '/path/to/your/dart-sdk/bin/dart',
    \         'language-server'
    \     ],
    \ },
\ }
```

To edit the project local `settings.json`, do `:LspSettingsLocalEdit`.

Overridable keys are:

* cmd (List ex: `['clangd-6.0', '-enable-snippets']`)
* initialization_options (Dictionary)
* allowlist (List)
* blocklist (List)
* config (Dictionary)
* workspace_config (Dictionary)
* disabled (Boolean)
* root_uri (String)
* root_uri_patterns (List)
* semantic_highlight (Dictionary)

If you have some Language Servers and want to use specified the server:

```vim
let g:lsp_settings_filetype_perl = 'slp'
let g:lsp_settings_filetype_html = ['html-languageserver', 'angular-language-server']
let g:lsp_settings_filetype_typescript = ['typescript-language-server', 'eslint-language-server']
```

When the servers are specified in a list, these will all be started.

If you want to configure Language Server to use `flake8` rather than `pycodestyle`,
the following can be added to your `~/.vimrc` file.
Note that `pylsp-all` was the automatically registered server name. Check with `:LspStatus`.

```vim
let g:lsp_settings = {
\   'pylsp-all': {
\     'workspace_config': {
\       'pylsp': {
\         'configurationSources': ['flake8']
\       }
\     }
\   },
\}
```

If you want to disable a Language Server:

```vim
let g:lsp_settings = {
\  'perl-languageserver': {
\    'disabled': 1,
\   }
\}
```

When resolving the root directory for a language server, this plugin will look
for directories containing special root markers defined in `g:lsp_settings_root_markers`.

By default, this is set to:

```vim
let g:lsp_settings_root_markers = [
\   '.git',
\   '.git/',
\   '.svn',
\   '.hg',
\   '.bzr'
\ ]
```

If you need to specify alternative root markers:

```vim
let g:lsp_settings_root_markers = ['.projections.json', '.git', '.git/']
```

This would look for a custom `.projections.json`, a git submodule `.git` or a git root
`.git/` starting from the current directory upwards.

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a. mattn)
