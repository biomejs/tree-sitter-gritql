(languageSpecificSnippet
  language: (languageName) @injection.language
  snippet: (doubleQuoteSnippet
    content: (snippetContent) @injection.content
  )
)

(foreignFunctionDefinition
  language: (foreignLanguageName) @injection.language
  body: (foreignFunctionBody
    code: (foreignLanguageCode) @injection.content
      (#set! injection.combined)
      (#set! injection.include-children)
  )
)

(regex
  regex: (_) @injection.content
  (#set! injection.language "regex")
)
