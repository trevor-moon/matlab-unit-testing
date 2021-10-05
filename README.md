# matlab-unit-testing

Brief overview, examples, and resources to getting started with MATLAB's Unittest Framework.

## Getting Started

### Definition

What is a 'unit test?' A unit test is a way of testing a unit - the smallest piece of code (e.g., function or program) that can be isolated and tested for correctness, i.e., it works as intended.

"[unit testing] is a software testing method by which individual units of source code - sets of one or more computer modules together with associated control data, usage procedures, and operating procedures - are teste to determine whether they are fit for use." - [Wikipedia][unit-test-wiki]

For more information, check out this [wiki page][unit-test-wiki].

### Unit Testing in MATLAB

Unit testing is available through [MATLAB Testing Frameworks][testing-frameworks]. There are several [ways to write unit tests][ways-to-write-unit-tests] in MATLAB:

- [Script-Based Unit Tests][script-unit-tests]
- [Function-Based Unit Tests][function-unit-tests]
- [Class-Based Unit Tests][class-unit-tests]

In general, the class-based unit tests are the most advanced and feature-rich way to write unit tests. In order of simple to advanced:

1. script-based
2. function-based
3. class-based

The main advantages of function and class based unit tests are the use of [fixtures](#unit-test-fixtures) and [testCase qualifications](#testcase-qualifications).

For a detailed overview of the different types of MATLAB Unit Tests, see the [Ways to Write Unit Tests][ways-to-write-unit-tests].

### Unit Test Naming

Naming of unit tests should follow the MATLAB-defined conventions for each [type](#unit-testing-in-matlab) of unit test. In general, the following convention can be used for every type of unit test:

1. The file containing the unit tests must start or end with 'test'.
2. The unit test names should start with 'test'.

For specific conventions for *how to name* unit tests, see [additional resources](#additional-resources).

### Unit Testing

1. Write a unit test file (`fooTest.m`)
2. Write a function/program (`foo.m`)
3. Run the unit test(s)
   1. `results = runtests('foo')`
   2. `results = run(foo)`

Writing unit tests can be found here:

- [Script-Based Unit Test][write-script-unit-tests]
- [Function-Based Unit Test][write-function-unit-tests]
- [Class-Based Unit Test][write-simple-class-unit-tests]

Examples of writing unit tests with scripts, functions, and classes are in [Examples](examples).

For more advanced topics like fixtures (test setup and teardown), parameterized tests, or creating test suites, see [additional resources](#additional-resources).

## Additional Resources

### Unit Test Naming Resources

Additional information on unit test naming styles. Unit tests should convery  easy-to-understand information about what is being tested.  

- [Medium article][unit-test-naming-1]
- [DZone article][unit-test-naming-2]
- [Stack Overflow thread][unit-test-naming-3]

### TestCase Qualifications

Unit test qualifications are verifiable, assumable, or assertable 'checks' used to determine the outcome (i.e., pass/fail) of the unit test.

See [more information][test-qualifications] on all the available unit test qualifications.

### Unit Test Fixtures

Test fixtures are used to perform setup and teardown actions before each test or set of unit tests. For example, adding and removing a folder to path to perform the test(s).

- [Function-Based Fixtures][function-fixtures]
- [Class-Based Fixtures][class-fixtures]

### Parameterized Tests

Perform unit test(s) with multiple values.

- [Write Parameterized Tests][write-parameterized-tests]
- [Write Basic Parameterized Tests][write-basic-parameterized-tests]

## Contributing

Please open an [issue][new issue] or [feature reqeust][new issue] if you would like to contribute. All suggestions and feedback are welcome.

If you'd like to add content directly, [fork][fork] this repo, add your content and [submit a pull request][pull-request].

## Questions and Comments

Please feel free to reach out and [email me][email] with the subject as the repo name.

<!-- links -->
[email]: mailto:trevor.r.moon@gmail.com
[new issue]: https://github.com/trevor-moon/matlab-unit-testing/issues/new
[fork]: https://github.com/trevor-moon/matlab-unit-testing/fork
[pull-request]: https://github.com/trevor-moon/matlab-unit-testing/pulls
[write-basic-parameterized-tests]: https://www.mathworks.com/help/matlab/matlab_prog/create-basic-parameterized-test.html
[write-parameterized-tests]: https://www.mathworks.com/help/matlab/matlab_prog/use-parameters-in-class-based-tests.html
[function-fixtures]: https://www.mathworks.com/help/matlab/matlab_prog/write-test-using-setup-and-teardown-functions.html
[class-fixtures]: https://www.mathworks.com/help/matlab/matlab_prog/write-setup-and-teardown-code-using-classes.html
[unit-test-wiki]: https://en.wikipedia.org/wiki/Unit_testing
[testing-frameworks]: https://www.mathworks.com/help/matlab/matlab-unit-test-framework.html
[script-unit-tests]: https://www.mathworks.com/help/matlab/script-based-unit-tests.html
[write-script-unit-tests]: https://www.mathworks.com/help/matlab/matlab_prog/write-script-based-unit-tests.html
[write-script-unit-tests-with-functions]: https://www.mathworks.com/help/matlab/matlab_prog/write-script-based-test-using-local-functions.html
[function-unit-tests]: https://www.mathworks.com/help/matlab/function-based-unit-tests.html
[write-function-unit-tests]: https://www.mathworks.com/help/matlab/matlab_prog/write-function-based-unit-tests.html
[class-unit-tests]: https://www.mathworks.com/help/matlab/class-based-unit-tests.html
[write-class-unit-tests]: https://www.mathworks.com/help/matlab/matlab_prog/author-class-based-unit-tests-in-matlab.html
[write-simple-class-unit-tests]: https://www.mathworks.com/help/matlab/matlab_prog/write-simple-test-case-using-classes.html
[unit-test-naming-1]: https://medium.com/@stefanovskyi/unit-test-naming-conventions-dd9208eadbea
[unit-test-naming-2]: https://dzone.com/articles/7-popular-unit-test-naming
[unit-test-naming-3]: https://stackoverflow.com/questions/155436/unit-test-naming-best-practices
[test-qualifications]: https://www.mathworks.com/help/matlab/matlab_prog/types-of-qualifications.html
[simple-test-suite]: https://www.mathworks.com/help/matlab/matlab_prog/create-simple-test-suites.html
[ways-to-write-unit-tests]: https://www.mathworks.com/help/matlab/matlab_prog/ways-to-write-unit-tests.html
