# mruby sysinfo

Libraries for getting host system information.

NOTE: Only supports linux for now.

## Getting started

Install these dependencies:

- `build-essential`
- `bison`
- `ruby`

Add this line on mruby `build_config.rb` before compilation.

```
...
conf.gem github: 'giosakti/mruby-sysinfo'
...
```

Use `Sysinfo::Factory.create` to generate Sysinfo instance. Call appropriate methods on the instance to fetch system-related information. For example: `#mem_stats`.

## Development Setup

Follow getting started guide.

### Running tests

Compile mruby with these 2 gems enabled.

``` 
...
conf.gem github: 'iij/mruby-print'
conf.gem github: 'iij/mruby-mtest'
...
```

Run `mruby test/**`

## Getting Help

If you have any questions or feedback regarding mruby-sysinfo:

- [File an issue](https://github.com/giosakti/mruby-sysinfo/issues/new) for bugs, issues and feature suggestions.

Your feedback is always welcome.

## Further Reading

- [mruby documentation][mruby-doc]
- [Guide to compile mruby][mruby-compile-guide]
- [mrbgems documentation][mrbgems-doc]

[mruby-doc]: https://github.com/mruby/mruby/tree/master/doc
[mruby-compile-guide]: https://github.com/mruby/mruby/blob/master/doc/guides/compile.md
[mrbgems-doc]: https://github.com/mruby/mruby/blob/master/doc/guides/mrbgems.md

## License

MIT License, see [LICENSE](LICENSE).
