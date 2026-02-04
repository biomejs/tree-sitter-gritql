; extends

; Comments
(comment) @comment

; Keywords
[
  "after"
  "and"
  "any"
  "as"
  "before"
  "bubble"
  "contains"
  "else"
  "engine "
  "every"
  "function "
  "if"
  "includes"
  "language"
  "like"
  "limit"
  "maybe"
  "multifile"
  "not"
  "or"
  "orelse"
  "pattern "
  "predicate "
  "private"
  "return"
  "sequential"
  "some"
  "where"
  "within"
] @keyword

(rewrite) @keyword.operator
(patternAccumulate) @keyword.operator
(predicateAccumulate) @keyword.operator
(predicateAssignment) @keyword.operator
(assignmentAsPattern) @keyword.operator
(predicateRewrite) @keyword.operator

; Literals
(stringConstant) @string
(intConstant) @number
(doubleConstant) @number
(booleanConstant) @boolean
(undefined) @constant.builtin
(top) @constant.builtin
(bottom) @constant.builtin
(codeSnippet) @string.special
(regex) @string.regexp

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
  ","
  "."
] @punctuation.bracket

; Operators
[
  "=>"
  "+="
  "="
  "<"
  ">"
  "<="
  ">="
  "!="
  "=="
  "<:"
  "*"
  "/"
  "%"
  "+"
  "-"
] @operator

; Definitions
(patternDefinition name: (name) @function)
(predicateDefinition name: (name) @function)
(functionDefinition name: (name) @function)
(foreignFunctionDefinition name: (name) @function)
(predicateCall name: (name) @function.call)
(nodeLike name: (name) @constructor)

; Language names
(languageName) @string
(foreignLanguageName) @string
(language_flavor) @string

(annotation) @attribute
