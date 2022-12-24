# frozen_string_literal: true

require "debug"
module SolargraphSyntaxSuggest
  class SyntaxSuggestReporter < Solargraph::Diagnostics::Base
    def diagnose(source, _api_map)
      io = StringIO.new
      SyntaxSuggest::Api.call(source:, filename: source.location.filename, io:)
      debugger(pre: "info")
      # return array of diagnostic messages, or empty array
    end

    private

    def diagnostic_message_for_line(line)
      {
        range: range(line, 0, line, @source.code.lines[line].length),
        severity: Solargraph::Diagnostics::Severities::ERROR,
        source: "SyntaxSuggest",
        message: "TODO"
      }
    end

    def range(start_line, start_column, end_line, end_column)
      Solargraph::Range.from_to(start_line, start_column, end_line, end_column).to_hash
    end
  end
end
