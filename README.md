# Exercism GNU APL Track

![build status](https://travis-ci.org/exercism/gnu-apl.svg?branch=master)

Exercism exercises in GNU APL.

## Setup

### Installing GNU APL

On MacOS, GNU APL is available as a [Homebrew](http://brew.sh) formula; just type `brew install gnu-apl` to install it.

On other operating systems, the simplest way to install GNU APL is probably to follow the instructions on the [GNU APL website](https://www.gnu.org/software/apl/). Note that version 1.7 seems to have build issues on some systems; if you can't build 1.7, then 1.6 should work.

### Installing a keyboard layout

APL uses many symbols that don't appear on most keyboard layouts, so you'll probably want to install an APL keyboard layout. The [keyboard layouts from Dyalog](https://www.dyalog.com/apl-font-keyboard.htm) seem to work well, and are available for free download for all modern operating systems. The same page also has links to fonts optimized for APL code (and even ordering information for physical keyboards with APL symbols on them).



## Contributing

Thank you so much for contributing! :tada:

Please read about how to [get involved in a track](https://github.com/exercism/docs/tree/master/contributing-to-language-tracks). Be sure to read the Exercism [Code of Conduct](https://github.com/exercism/exercism.io/blob/master/CODE_OF_CONDUCT.md).

We welcome pull requests of all kinds. No contribution is too small.

We encourage contributions that provide fixes and improvements to existing exercises. Please note that this track's exercises must conform to the Exercism-wide standards described in the [documentation](https://github.com/exercism/docs/tree/master/language-tracks/exercises). If you're unsure about how to make a change, then go ahead and open a GitHub issue, and we'll discuss it.

## Exercise Tests

At the most basic level, Exercism is all about the tests. You can read more about how we think about test suites in [the Exercism documentation](https://github.com/exercism/docs/blob/master/language-tracks/exercises/anatomy/test-suites.md).

We are currently using GNU APL's testing framework, with some extra tooling found in the test.apl file at the root of the track. So test files should be called `<exercise-name>.tc`, and should be in the following format. (`⍝` indicates comments that should be in the actual test file; `#` are explanatory comments for the purposes of this README.)

```apl
log←'./<exercise-name>.tc.log'
⍎ ')COPY ',(⎕FIO 30),'/../../test.apl'

test∆copy_relative '<exercise-name>.apl'
test∆clear_log log

# The preceding lines are boilerplate, and must be in every test file (sorry about that!).  The actual test code follows.

⍝ ∇greet # Name of function being tested; not mandatory, but nice.

⍝ it returns a greeting to the supplied name # description of test case
  1⎕CR greet 'Chris' # APL code to execute; 1⎕CR quotes strings and does other nice things
'Hello, Chris!' # exact expected output

⍝ when left argument is supplied, uses it instead of 'Hello' # another test case
  1⎕CR 'Good morning' greet 'Sandy'
'Good morning, Sandy!'

test∆show_log log # this must be at the end of the file so that the test results get displayed to STDERR
```

When in doubt, copy the format of the existing test files, or otherwise do what seems sensible.

## Opening an Issue

If you plan to make significant or breaking changes, please open an issue so we can discuss it first. If this is a discussion that is relevant to more than just the GNU APL track, please open an issue in [exercism/discussions](https://github.com/exercism/discussions/issues).

## Submitting a Pull Request

Pull requests should be focused on a single exercise, issue, or conceptually cohesive change. Please refer to Exercism's [pull request guidelines](https://github.com/exercism/docs/blob/master/contributing/pull-request-guidelines.md).

### Verifying Your Change

Before submitting your pull request, you'll want to verify the changes in two ways:

* Run all the tests for the GNU APL exercises
* Run an Exercism-specific linter to verify the track

All the tests for GNU APL exercises can be run from the top level of the repo with

```
bin/run-all-tests
```

For the Exercism-specific linting, please see [the documentation](https://github.com/exercism/docs/blob/a8ea5db92e2a2d2839e66ec10c7687b3b7db002a/language-tracks/configuration/configlet.md).

## Contributing a New Exercise

Please see the documentation about [adding new exercises](https://github.com/exercism/docs/blob/master/you-can-help/make-up-new-exercises.md).

Note that:

- Each exercise must stand on its own. Do not reference files outside the exercise directory (except for the supplied test.apl). They will not be included when the user fetches the exercise.
- Exercises should use only the GNU APL core language. If it is feasible, they should be portable to other APL interpreters too (such as Dyalog). This shouldn't be hard in most cases, since GNU APL adheres closely to the ISO 13751 standard.
- Exercises must conform to the Exercism-wide standards described in [the documentation](https://github.com/exercism/docs/tree/master/language-tracks/exercises).
- Each exercise should have a test suite, an example solution, a README (generated by Configlet), and a template file for the real implementation (optional). The CI build expects files to be named using the following convention (where `<exercise-name>` is the slug as it appears in the config file):
  - `<exercise-name>/`
    - `README.md`
    - `<exercise-name>.tc` (test suite)
    - `<exercise-name>-example.apl` (example solution)
    - `<exercise-name>.apl` (optional template)
- Make sure your example file (and template, if you have one) has an initial `#!` (shebang) line; GNU APL doesn't seem to like to execute files without it when they're loaded from the command line. We recommend something like the following:
```apl
#!/usr/bin/env apl --script
```
- Be sure to add the exercise to the appropriate place in the `config.json` file.
