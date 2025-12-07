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
