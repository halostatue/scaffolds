# frozen_string_literal: true

require "minitest_helper"

class Test{{ .ProjectPascal }} < Minitest::Test
  def test_version
    refute_nil {{ .ProjectPascal }}::VERSION
  end
end
