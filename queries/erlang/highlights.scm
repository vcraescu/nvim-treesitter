;; keywoord
[
  "fun"
  "div"
] @keyword
;; bracket
[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
	"#"
] @punctuation.bracket
;; conditional
[
  "receive"
  "try"
  "throw"
  "catch"
  "if"
  "case"
  "of"
  "when"
  "after"
  "end"
] @conditional
;;; module define
[
  "module"
  "export"
] @include
;;; operator
[
  ":"
  ":="
  "?"
  "!"
  "-"
  "+"
  "="
  "->"
  "=>"
	"|"
	;;;TODO
	"$"
 ] @operator

(comment) @comment
(string) @string
(variable) @variable

(module_name
  (atom) @namespace
)
;;; expr_function_call
(expr_function_call
  name: (computed_function_name) @function 
) 

(expr_function_call
  arguments: (atom) @variable
)

;;; map
(map 
 (map_entry [
   (atom)
   (variable)
 ] @variable)
)


(tuple (atom) @variable)
(pat_tuple ( pattern (atom) @variable))

(computed_function_name) @function
;;; case
(case_clause
  pattern: (pattern
    (atom) @variable
  )
)
(case_clause
  body: (atom) @variable
)

;;; function
(qualified_function_name
  module_name: (atom) @attribute
  function_name: (atom) @function
)
;; function
(function_clause
  name: (atom) @function)
;;;lambda
(lambda_clause
  arguments:
    (pattern) @variable
)
