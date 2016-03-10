(require 'flycheck)

(flycheck-define-checker markdown-markdownlint
  "Markdown checker using markdownlint.

See URL: https://github.com/mivok/markdownlint"
  :command ("mdl" source-original)
  :error-patterns
  ((warning line-start (file-name) ":" line ": " (message) line-end))
  :modes (markdown-mode))

(add-to-list 'flycheck-checkers 'markdown-markdownlint)

(provide 'flycheck-markdownlint)
