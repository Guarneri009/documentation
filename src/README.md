# Introduction


## MCP

- claude mcp add --transport stdio serena -- uvx --from git+https://github.com/oraios/serena serena-mcp-server
- claude mcp add context7 -- npx @upstash/context7-mcp
- claude mcp add context7 -s project -- npx -y @upstash/context7-mcp (プロジェクト単位)

- https://zenn.dev/karaage0703/articles/3bd2957807f311

MCPサーバを削除したい場合は、以下コマンドを実行しましょう。
- claude mcp remove xxx

- .mcp.json
``` json
{
  "mcpServers": {
    "context7": {
      "type": "stdio",
      "command": "npx",
      "args": [
        "-y",
        "@upstash/context7-mcp"
      ],
      "env": {}
    },
    "serena": {
      "type": "stdio",
      "command": "uvx",
      "args": [
        "--from",
        "git+https://github.com/oraios/serena",
        "serena-mcp-server"
      ],
      "env": {}
    }
  }
}
```
- .clang-format
```
# Based on Google style with customizations
BasedOnStyle: Google
ColumnLimit: 100
IndentWidth: 4
TabWidth: 4
UseTab: Never
PointerAlignment: Left
ReferenceAlignment: Left
AlignAfterOpenBracket: Align
AlignConsecutiveAssignments: false
AlignConsecutiveDeclarations: false
AlignOperands: true
AlignTrailingComments: true
AllowShortBlocksOnASingleLine: Empty
AllowShortCaseLabelsOnASingleLine: false
AllowShortFunctionsOnASingleLine: Inline
AllowShortIfStatementsOnASingleLine: Never
AllowShortLoopsOnASingleLine: false
BreakBeforeBraces: Attach
BreakConstructorInitializers: BeforeColon
BreakInheritanceList: BeforeColon
IncludeBlocks: Regroup
IndentCaseLabels: true
IndentPPDirectives: AfterHash
KeepEmptyLinesAtTheStartOfBlocks: false
MaxEmptyLinesToKeep: 1
NamespaceIndentation: None
ReflowComments: true
SortIncludes: CaseInsensitive
SpaceAfterCStyleCast: false
SpaceAfterTemplateKeyword: true
SpaceBeforeAssignmentOperators: true
SpaceBeforeParens: ControlStatements
SpaceInEmptyParentheses: false
SpacesInAngles: false
SpacesInCStyleCastParentheses: false
SpacesInContainerLiterals: false
SpacesInParentheses: false
SpacesInSquareBrackets: false
Standard: c++20
# Prevent breaking spaceship operator <=>
SpaceBeforeCpp11BracedList: false
```

## serena

- serena_config.yml
``` bash
web_dashboard: false
# whether to open the Serena web dashboard (which will be accessible through your web browser) that
# shows Serena's current session logs - as an alternative to the GUI log window which
# is supported on all platforms.

web_dashboard_open_on_launch: false
# whether to open a browser window with the web dashboard when Serena starts (provided that web_dashboard
# is enabled). If set to False, you can still open the dashboard manually by navigating to
# http://localhost:24282/dashboard/ in your web browser (24282 = 0x5EDA, SErena DAshboard).
# If you have multiple instances running, a higher port will be used; try port 24283, 24284, etc.

```



## mdbook

[https://rust-lang.github.io/mdBook/index.html](https://rust-lang.github.io/mdBook/index.html)  
<https://github.com/rust-lang/mdBook>

mdbook serve --open でホットリロード状態

## mathjax

<https://www.tohoho-web.com/ex/mathjax.html>

インライン

\\(
\begin{eqnarray}
  i\hbar\frac{\partial}{\partial t}\psi(x,t)=
  \left(-\frac{\hbar^2}{2m}+V(x)\right)\psi(x,t)
\end{eqnarray}
\\)
エンド

ブロック
\\[ \mu = \frac{1}{N} \sum_{i=0} x_i \\]
エンド

## mermaid 拡張

<https://github.com/badboy/mdbook-mermaid>

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

Use [mdBook](https://github.com/rust-lang/mdBook).

Read about [mdBook](mdBook.md).

A bare url: <https://www.rust-lang.org>.

## mdBookで日本語検索

<https://blog.bridgey.dev/2023/06/14/search-japanese-on-mdbook/>
