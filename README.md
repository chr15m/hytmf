This is a testing micro-framework for [Hy](http://docs.hylang.org/en/stable/).

To use it, wrap every `assert` in the `test-case` macro call like this:

```hy
(require [hytest [test-case]])

(test-case (assert (= True True)))
(test-case (assert (= False True)))
```

When you run the tests you will see the source code of each test and a pass/fail indicator like this:

```
$ hy testtest.hy 
Test: 	(assert (= True True))
Pass:	✔
Test: 	(assert (= False True))
Traceback (most recent call last):
  File "/home/chrism/dev/hytmf/virtualenv/bin/hy", line 10, in <module>
    sys.exit(hy_main())
  File "/home/chrism/.pyenv/versions/3.5.5/lib/python3.5/runpy.py", line 263, in run_path
    pkg_name=pkg_name, script_name=fname)
  File "/home/chrism/.pyenv/versions/3.5.5/lib/python3.5/runpy.py", line 96, in _run_module_code
    mod_name, mod_spec, pkg_name, script_name)
  File "/home/chrism/.pyenv/versions/3.5.5/lib/python3.5/runpy.py", line 85, in _run_code
    exec(code, run_globals)
  File "/home/chrism/dev/hytmf/testtest.hy", line 5, in <module>
    (test-case (assert (= False True)))
AssertionError
```
