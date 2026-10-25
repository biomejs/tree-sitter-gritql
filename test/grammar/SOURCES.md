# Grammar test fixtures

Every fixture is copied unchanged from an existing GritQL source. None are written by hand.

- `biome/` files come from the [Biome](https://github.com/biomejs/biome) repository and parse and compile with Biome's GritQL plugin loader.
- `marzano/` files come from Grit's Marzano engine tests ([getgrit/gritql](https://github.com/getgrit/gritql), `crates/core/src/test.rs`, with the `|` margins removed as `trim_margin()` does) or from this repository's test corpus. They parse and compile with Marzano and parse without errors using this tree-sitter grammar.

| Fixture | Source |
| --- | --- |
| `biome/await-in-loop.grit` | biome `crates/biome_plugin_loader/benches/fixtures/grit/await_in_loop.grit` |
| `biome/capitalize.grit` | biome `crates/biome_grit_patterns/tests/specs/ts/capitalize.grit` |
| `biome/function-definition.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/function_definition.grit` |
| `biome/if-else-pattern.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/patterns/if_else.grit` |
| `biome/jsx-nodes.grit` | biome `crates/biome_grit_patterns/tests/specs/tsx/jsx_nodes.grit` |
| `biome/like.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/patterns/like.grit` |
| `biome/limit-clause.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/limit_clause.grit` |
| `biome/list.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/list.grit` |
| `biome/map.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/map.grit` |
| `biome/not-condition.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/not_condition.grit` |
| `biome/pattern-after.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/pattern_after.grit` |
| `biome/pattern-and.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/pattern_end.grit` |
| `biome/pattern-any.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/patterns/any.grit` |
| `biome/positional-args.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/positional_args.grit` |
| `biome/precedence-rules.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/precedence_rules.grit` |
| `biome/predicate-definition.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/predicate_definition.grit` |
| `biome/prefer-object-spread.grit` | biome `crates/biome_js_analyze/tests/plugin/preferObjectSpread.grit` |
| `biome/raw-snippet.grit` | biome `crates/biome_grit_patterns/tests/specs/ts/rawSnippet.grit` |
| `biome/regex.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/patterns/regex.grit` |
| `biome/regex-snippet.grit` | biome `crates/biome_grit_patterns/tests/specs/ts/regex.grit` |
| `biome/restricted-callee.grit` | biome `crates/biome_plugin_loader/benches/fixtures/grit/restricted_callee.grit` |
| `biome/rewrite-in-where.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/rewrite_in_where.grit` |
| `biome/sequential.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/sequential.grit` |
| `biome/spread-metavariable.grit` | biome `crates/biome_grit_patterns/tests/specs/ts/spreadMetavariable.grit` |
| `biome/undefined-reference.grit` | biome `crates/biome_plugin_loader/benches/fixtures/grit/undefined_reference.grit` |
| `biome/until-modifier.grit` | biome `crates/biome_grit_parser/tests/grit_test_suite/ok/until_modifier.grit` |
| `biome/use-lowercase-colors.grit` | biome `crates/biome_css_analyze/tests/plugin/useLowercaseColors.grit` |
| `biome/version.grit` | biome `crates/biome_grit_formatter/tests/specs/grit/version.grit` |
| `marzano/any-predicate.grit` | gritql `crates/core/src/test.rs`, test `test_any_predicate` |
| `marzano/before-list-index.grit` | gritql `crates/core/src/test.rs`, test `before_list_index` |
| `marzano/comments-node.grit` | gritql `crates/core/src/test.rs`, test `test_js_comments` |
| `marzano/curly-metavar.grit` | gritql `crates/core/src/test.rs`, test `curly_metavar` |
| `marzano/foreign-function-comments.grit` | gritql `crates/core/src/test.rs`, test `call_foreign_js_function_with_bracket_in_comment` |
| `marzano/includes-regex.grit` | gritql `crates/core/src/test.rs`, test `includes_regex` |
| `marzano/multifile-pattern.grit` | gritql `crates/core/src/test.rs`, test `test_multifile_pattern` |
| `marzano/php-array.grit` | gritql `crates/core/src/test.rs`, test `php_array` |
| `marzano/predicate-maybe.grit` | gritql `crates/core/src/test.rs`, test `predicate_maybe` |
| `marzano/private-pattern.grit` | this repo, `test/corpus/private.txt` |
| `marzano/range-line.grit` | gritql `crates/core/src/test.rs`, test `test_range_line` |
| `marzano/ranges.grit` | gritql `crates/core/src/test.rs`, test `test_ranges` |
| `marzano/simple-predicate.grit` | gritql `crates/core/src/test.rs`, test `simple_predicate` |
