(require [hytest [test-case]])

(test-case (assert (= True True)))
; this test fails on purpose to demonstrate what happens
(test-case (assert (= False True)))
