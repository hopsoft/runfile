Change Log
========================================

v1.0.2 - 2023-07-05
----------------------------------------

- Change --version and --help to exit with 0
- Update backtrace location report on error
- Drop support for Ruby 2.x


v1.0.1 - 2023-02-09
----------------------------------------

- Fix inability to use 'run' as an action name
- Fix shortcuts in named runfiles


v1.0.0 - 2023-02-01
----------------------------------------

- Maintenance update
- Drop support for Ruby < 2.6
- Complete rebuild from scratch
- Drop support for Ruby 2.6
- Add context to import directive
- Refactor imports
- Allow import_gem to have no path and import all
- Add support for helpers to improve context isolation
- Add require_context directive
- Fix example copy
- Match the exit code with the last action value, if it is an integer
- Add DEBUG=1 tip on general exception
- Refactor Userfile
- Drop support for eecute directive
- Add transofrm directive, to create argv shortcuts
- Rename 'transform' directive to 'shortcut'
- Catch DocoptLanguageError and reraise Runfile::SyntaxError


v0.12.0 - 2021-09-29
----------------------------------------

- Add compatibility layer


v0.12.0-rc1 - 2021-09-27
----------------------------------------

- Remove Colsole and Exec modules


v0.11.2 - 2020-11-06
----------------------------------------

- Add 'env_var' DSL command to specify environment variables used by the Runfile


## [v0.11.1](https://github.com/DannyBen/runfile/tree/v0.11.1) (2020-05-07)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.11.0...v0.11.1)

**Merged pull requests:**

- Ruby 2.7 compatibilty [\#42](https://github.com/DannyBen/runfile/pull/42) ([DannyBen](https://github.com/DannyBen))
- Switch to github actions [\#41](https://github.com/DannyBen/runfile/pull/41) ([DannyBen](https://github.com/DannyBen))
- Test with Ruby 2.7 [\#40](https://github.com/DannyBen/runfile/pull/40) ([DannyBen](https://github.com/DannyBen))
- Maintenance update [\#39](https://github.com/DannyBen/runfile/pull/39) ([DannyBen](https://github.com/DannyBen))

## [v0.11.0](https://github.com/DannyBen/runfile/tree/v0.11.0) (2018-12-11)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.10.3...v0.11.0)

**Merged pull requests:**

- Add param command [\#38](https://github.com/DannyBen/runfile/pull/38) ([DannyBen](https://github.com/DannyBen))

## [v0.10.3](https://github.com/DannyBen/runfile/tree/v0.10.3) (2018-10-08)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.10.2...v0.10.3)

**Merged pull requests:**

- Fix invalid exit code in certain situations [\#37](https://github.com/DannyBen/runfile/pull/37) ([DannyBen](https://github.com/DannyBen))

## [v0.10.2](https://github.com/DannyBen/runfile/tree/v0.10.2) (2018-10-03)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.10.1...v0.10.2)

**Merged pull requests:**

- Exit with non zero code when showing usage [\#36](https://github.com/DannyBen/runfile/pull/36) ([DannyBen](https://github.com/DannyBen))
- Remove shields.io [\#34](https://github.com/DannyBen/runfile/pull/34) ([DannyBen](https://github.com/DannyBen))

## [v0.10.1](https://github.com/DannyBen/runfile/tree/v0.10.1) (2018-03-21)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.10.0...v0.10.1)

**Merged pull requests:**

- Fix `run!` when using RVM in a Gemfiled folder [\#31](https://github.com/DannyBen/runfile/pull/31) ([DannyBen](https://github.com/DannyBen))
- Test against ruby 2.5 [\#29](https://github.com/DannyBen/runfile/pull/29) ([DannyBen](https://github.com/DannyBen))
- Improve static code review issues [\#24](https://github.com/DannyBen/runfile/pull/24) ([DannyBen](https://github.com/DannyBen))
- Upgrade cucumber to version 3.0.2 [\#23](https://github.com/DannyBen/runfile/pull/23) ([depfu[bot]](https://github.com/apps/depfu))

## [v0.10.0](https://github.com/DannyBen/runfile/tree/v0.10.0) (2017-06-09)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.9.1...v0.10.0)

**Merged pull requests:**

- Update colsole dependency [\#22](https://github.com/DannyBen/runfile/pull/22) ([DannyBen](https://github.com/DannyBen))

## [v0.9.1](https://github.com/DannyBen/runfile/tree/v0.9.1) (2017-04-08)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.9.0...v0.9.1)

## [v0.9.0](https://github.com/DannyBen/runfile/tree/v0.9.0) (2017-03-31)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.8.2...v0.9.0)

**Merged pull requests:**

- Change 'name' to 'title' [\#21](https://github.com/DannyBen/runfile/pull/21) ([DannyBen](https://github.com/DannyBen))

## [v0.8.2](https://github.com/DannyBen/runfile/tree/v0.8.2) (2017-03-24)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.8.1...v0.8.2)

**Merged pull requests:**

- Separate DSL to a submodule [\#20](https://github.com/DannyBen/runfile/pull/20) ([DannyBen](https://github.com/DannyBen))

## [v0.8.1](https://github.com/DannyBen/runfile/tree/v0.8.1) (2016-06-08)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.8.0...v0.8.1)

**Merged pull requests:**

- Make dsl methods private for better scoping [\#19](https://github.com/DannyBen/runfile/pull/19) ([DannyBen](https://github.com/DannyBen))

## [v0.8.0](https://github.com/DannyBen/runfile/tree/v0.8.0) (2016-06-06)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.7.1...v0.8.0)

**Fixed bugs:**

- Collision with call DSL method [\#16](https://github.com/DannyBen/runfile/issues/16)

**Merged pull requests:**

- DSL Change: Rename call to execute [\#17](https://github.com/DannyBen/runfile/pull/17) ([DannyBen](https://github.com/DannyBen))

## [v0.7.1](https://github.com/DannyBen/runfile/tree/v0.7.1) (2016-05-10)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.6.4...v0.7.1)

**Implemented enhancements:**

- Improve handling of `run make` when .runfile is present [\#14](https://github.com/DannyBen/runfile/issues/14)

**Closed issues:**

- Test ticket from Code Climate [\#11](https://github.com/DannyBen/runfile/issues/11)

**Merged pull requests:**

- Improve `run make` and rename to `run new` [\#15](https://github.com/DannyBen/runfile/pull/15) ([DannyBen](https://github.com/DannyBen))
- Merge Runfile::Exec into Runfile [\#13](https://github.com/DannyBen/runfile/pull/13) ([DannyBen](https://github.com/DannyBen))
- Add config block to Runfile::Exec [\#12](https://github.com/DannyBen/runfile/pull/12) ([DannyBen](https://github.com/DannyBen))

## [v0.6.4](https://github.com/DannyBen/runfile/tree/v0.6.4) (2016-04-21)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.6.3...v0.6.4)

**Merged pull requests:**

- Add shortcuts support to .runfile settings [\#10](https://github.com/DannyBen/runfile/pull/10) ([DannyBen](https://github.com/DannyBen))

## [v0.6.3](https://github.com/DannyBen/runfile/tree/v0.6.3) (2016-04-18)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.6.2...v0.6.3)

**Merged pull requests:**

- Improve usage file list when using .runfile settings [\#9](https://github.com/DannyBen/runfile/pull/9) ([DannyBen](https://github.com/DannyBen))

## [v0.6.2](https://github.com/DannyBen/runfile/tree/v0.6.2) (2016-04-07)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.6.0...v0.6.2)

**Implemented enhancements:**

- Add .runfile config [\#7](https://github.com/DannyBen/runfile/issues/7)

**Merged pull requests:**

- Add .runfile config [\#8](https://github.com/DannyBen/runfile/pull/8) ([DannyBen](https://github.com/DannyBen))
- Update test to be future proof with similarity [\#6](https://github.com/DannyBen/runfile/pull/6) ([DannyBen](https://github.com/DannyBen))

## [v0.6.0](https://github.com/DannyBen/runfile/tree/v0.6.0) (2016-02-12)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.5.4...v0.6.0)

**Merged pull requests:**

- Merge commands from runfile-exec [\#5](https://github.com/DannyBen/runfile/pull/5) ([DannyBen](https://github.com/DannyBen))
- Convert tests from minitest to cucumber [\#4](https://github.com/DannyBen/runfile/pull/4) ([DannyBen](https://github.com/DannyBen))

## [v0.5.4](https://github.com/DannyBen/runfile/tree/v0.5.4) (2016-01-04)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.5.3...v0.5.4)

## [v0.5.3](https://github.com/DannyBen/runfile/tree/v0.5.3) (2015-12-01)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.5.2...v0.5.3)

## [v0.5.2](https://github.com/DannyBen/runfile/tree/v0.5.2) (2015-11-07)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.5.1...v0.5.2)

## [v0.5.1](https://github.com/DannyBen/runfile/tree/v0.5.1) (2015-11-07)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.5.0...v0.5.1)

## [v0.5.0](https://github.com/DannyBen/runfile/tree/v0.5.0) (2015-11-01)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.4.1...v0.5.0)

## [v0.4.1](https://github.com/DannyBen/runfile/tree/v0.4.1) (2015-10-30)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.4.0...v0.4.1)

## [v0.4.0](https://github.com/DannyBen/runfile/tree/v0.4.0) (2015-10-30)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.3.6...v0.4.0)

## [v0.3.6](https://github.com/DannyBen/runfile/tree/v0.3.6) (2015-10-04)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.3.5...v0.3.6)

## [v0.3.5](https://github.com/DannyBen/runfile/tree/v0.3.5) (2015-08-17)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.3.4...v0.3.5)

## [v0.3.4](https://github.com/DannyBen/runfile/tree/v0.3.4) (2015-08-02)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.3.3...v0.3.4)

## [v0.3.3](https://github.com/DannyBen/runfile/tree/v0.3.3) (2015-07-01)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.3.2...v0.3.3)

**Closed issues:**

- Refactor Runfile::DocoptHelper from a B on Code Climate [\#3](https://github.com/DannyBen/runfile/issues/3)
- Refactor Runfile::DocoptHelper from a B on Code Climate [\#2](https://github.com/DannyBen/runfile/issues/2)
- Test ticket from Code Climate [\#1](https://github.com/DannyBen/runfile/issues/1)

## [v0.3.2](https://github.com/DannyBen/runfile/tree/v0.3.2) (2015-06-13)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.3.1...v0.3.2)

## [v0.3.1](https://github.com/DannyBen/runfile/tree/v0.3.1) (2015-05-30)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.3.0...v0.3.1)

## [v0.3.0](https://github.com/DannyBen/runfile/tree/v0.3.0) (2015-05-23)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.2.9...v0.3.0)

## [v0.2.9](https://github.com/DannyBen/runfile/tree/v0.2.9) (2015-05-20)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.2.8...v0.2.9)

## [v0.2.8](https://github.com/DannyBen/runfile/tree/v0.2.8) (2015-05-20)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.2.7...v0.2.8)

## [v0.2.7](https://github.com/DannyBen/runfile/tree/v0.2.7) (2015-05-18)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.2.6...v0.2.7)

## [v0.2.6](https://github.com/DannyBen/runfile/tree/v0.2.6) (2015-05-17)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.2.5...v0.2.6)

## [v0.2.5](https://github.com/DannyBen/runfile/tree/v0.2.5) (2015-05-16)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.2.2...v0.2.5)

## [v0.2.2](https://github.com/DannyBen/runfile/tree/v0.2.2) (2015-05-16)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.2.0...v0.2.2)

## [v0.2.0](https://github.com/DannyBen/runfile/tree/v0.2.0) (2015-05-16)

[Full Changelog](https://github.com/DannyBen/runfile/compare/v0.1.2...v0.2.0)

## [v0.1.2](https://github.com/DannyBen/runfile/tree/v0.1.2) (2015-05-15)

[Full Changelog](https://github.com/DannyBen/runfile/compare/b0adc11238098d2a72f2ace2a98e2c1ed4e6c8c4...v0.1.2)

