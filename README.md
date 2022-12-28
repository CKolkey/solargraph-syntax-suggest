# SolargraphSyntaxSuggest

This solargraph plugin leverages the [syntax suggest](https://github.com/ruby/syntax_suggest) gem to provide syntax disagnostic messages.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add solargraph-syntax-suggest

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install solargraph-syntax-suggest

## Usage

Add the following to your `.solargraph.yml` file:
```yml
reporters:
  - syntax_suggest
plugins:
  - solargraph_syntax_suggest
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ckolkey/solargraph-syntax-suggest.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
