# frozen_string_literal: true

module SolargraphSyntaxSuggest
  class SyntaxSuggestReporter < Solargraph::Diagnostics::Base
    def diagnose(source, _api_map)
      io = StringIO.new
      ::SyntaxSuggest.call(source: source.code, io:)

      return [] if io.string.empty?

      report = io.string.lines
      line_numbers(report).map do
        diagnostic_message_for_line(
          line: _1,
          message: report.first.chomp,
          length: source.code.lines[_1].length
        )
      end
    end

    private

    def line_numbers(report)
      report.slice(2..)
            .select { _1.start_with?(">") }
            .map { _1.split[1].to_i - 1 }
    end

    def diagnostic_message_for_line(line:, message:, length:)
      {
        range: Solargraph::Range.from_to(line, 0, line, length).to_hash,
        severity: Solargraph::Diagnostics::Severities::ERROR,
        source: "SyntaxSuggest",
        message:
      }
    end
  end
end
