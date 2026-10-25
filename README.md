# tree-sitter-gritql

[![CI Status](https://img.shields.io/github/actions/workflow/status/getgrit/tree-sitter-gritql/ci.yml)](https://github.com/getgrit/tree-sitter-gritql/actions/workflows/ci.yml)
[![MIT License](https://img.shields.io/github/license/getgrit/tree-sitter-gritql)](https://github.com/getgrit/tree-sitter-gritql/blob/main/LICENSE)
[![Discord](https://img.shields.io/discord/1063097320771698699?logo=discord&label=discord)](https://docs.grit.io/discord)

A tree-sitter parser for [GritQL](https://docs.grit.io/language/overview) files.

GritQl is an AST-aware query language for searching and transforming source code.

## Syntax Example

```grit
language js

`console.log($my_message)` => `winston.info($my_message)` where {
  $my_message <: string()
}
```

Explore the [interactive tutorial](https://docs.grit.io/tutorials/gritql) to learn more about GritQL.

## TextMate Grammar

A TextMate grammar for GritQL lives in [`syntaxes/gritql.tmLanguage.json`](syntaxes/gritql.tmLanguage.json) and ships with the npm package. Its scope name is `source.gritql`, and it covers both the Grit (Marzano) syntax in this repo and the GritQL dialect used by [Biome](https://biomejs.dev/) plugins. It can be used by VS Code, Shiki, and GitHub Linguist.

The grammar has snapshot tests that run [`vscode-tmgrammar-test`](https://github.com/PanAeon/vscode-tmgrammar-test) against the fixtures in `test/grammar/`. The fixtures are copied unchanged from real GritQL sources (Biome's and Marzano's test suites, and this repo's corpus); [`test/grammar/SOURCES.md`](test/grammar/SOURCES.md) lists where each one came from. Files in `test/grammar/biome/` are valid Biome plugins, and files in `test/grammar/marzano/` are valid for Grit's Marzano engine.

```sh
npm run test:grammar
```

After changing the grammar, regenerate the snapshots with `npx vscode-tmgrammar-snap -s source.gritql -g syntaxes/gritql.tmLanguage.json --updateSnapshot "test/grammar/**/*.grit"`, then review the `.snap` diffs.

## References
- [GritQL Language Overview](https://docs.grit.io/language/overview)
- [GritQL Language Reference](https://docs.grit.io/language/syntax)
- [Grit Standard Libarary](https://github.com/getgrit/stdlib)
