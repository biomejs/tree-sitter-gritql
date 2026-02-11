; extends

; Comments
(comment) @comment

; Keywords
[
  "bubble"
  "multifile"
  "sequential"
  "where"
] @keyword

[
  "after"
  "and"
  "any"
  "as"
  "before"
  "contains"
  "every"
  "limit"
  "maybe"
  "not"
  "or"
  "some"
  "within"
] @keyword.operator

[
  "until"
] @keyword.repeat

[
  "engine "
  "language"
] @keyword.directive

[
  "else"
  "if"
] @keyword.conditional

[
  "function "
  "pattern "
  "predicate "
] @keyword.function

[
  "private"
] @keyword.modifier

[
  "return"
] @keyword.return

; Literals
(stringConstant) @string
(intConstant) @number
(doubleConstant) @number.float
(booleanConstant) @boolean

(undefined) @constant.builtin
(top) @constant.builtin
(bottom) @constant.builtin
(codeSnippet) @string
(regex) @string.regexp
(mapElement key: ((name) @string.special.symbol))

(annotation) @attribute

; Variables
(variable) @variable

; Punctuation
[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ","
] @punctuation.delimiter

; Operators
[
  "!"
  "!="
  "%"
  "*"
  "+"
  "+="
  "-"
  "/"
  "<"
  "<:"
  "<="
  "="
  "=="
  "=>"
  ">"
  ">="
  (dot)
  (dotdotdot)
] @operator

; Definitions
(functionDefinition
  name: (name) @function
  args: (
    (variable) @variable.parameter
    ("," (variable) @variable.parameter)*
  )?
)
(foreignFunctionDefinition
  name: (name) @function
  args: (
    (variable) @variable.parameter
    ("," (variable) @variable.parameter)*
  )?
)
(patternDefinition
  name: (name) @function
  args: (
    (variable) @variable.parameter
    ("," (variable) @variable.parameter)*
  )?
)
(predicateDefinition
  name: (name) @function
  args: (
    (variable) @variable.parameter
    ("," (variable) @variable.parameter)*
  )?
)

; Function calls
(predicateCall name: (name) @function.call)
(nodeLike name: (name) @function.call)
(namedArg name: (name) @variable.parameter)

; Builtin functions
; https://docs.grit.io/language/functions#built-in-functions
(
  predicateCall
  name: (name) @function.builtin
  (#any-of? @function.builtin
    "capitalize"
    "distinct"
    "join"
    "length"
    "lowercase"
    "random"
    "resolve"
    "shuffle"
    "spit"
    "text"
    "todo"
    "trim"
    "uppercase"
  )
)
(nodeLike
  name: (name) @function.builtin
  (#any-of? @function.builtin
    "capitalize"
    "distinct"
    "join"
    "length"
    "lowercase"
    "random"
    "resolve"
    "shuffle"
    "spit"
    "text"
    "todo"
    "trim"
    "uppercase"
  )
)
(log
  "log" @function.builtin
  [
    "message"
    "variable"
  ] @variable.parameter
)
(range
  "range" @function.builtin
  [
    "start_line"
    "end_line"
    "start_column"
    "end_column"
  ] @variable.parameter
)

; Language names
(languageName) @string
(foreignLanguageName) @string
(language_flavor) @string
