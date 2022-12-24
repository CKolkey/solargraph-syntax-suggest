# frozen_string_literal: true

require_relative "solargraph_syntax_suggest"
require "solargraph"
require "syntax_suggest"

module SolargraphSyntaxSuggest
  Solargraph::Diagnostics.register "syntax_suggest", SyntaxSuggestReporter
end
