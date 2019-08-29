(defn print-expression [expr]
  (+ "(" (.join " " (lfor x expr (cond [(= (type x) HyExpression) (print-expression x)]
                                       [(= (type x) HyString) (+ "\"" x "\"")]
                                       [True (str x)]))) ")"))

(defmacro test-case [expr]
  (quasiquote (do
                (print (+ "Test: \t" (unquote (print-expression expr))))
                (unquote expr)
                (print "Pass:\t✔"))))

