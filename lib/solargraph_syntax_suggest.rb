# frozen_string_literal: true

require "solargraph"
require "syntax_suggest/api"

require_relative "solargraph_syntax_suggest/syntax_suggest_reporter"

module SolargraphSyntaxSuggest
  Solargraph::Diagnostics.register "syntax_suggest", SyntaxSuggestReporter
end
