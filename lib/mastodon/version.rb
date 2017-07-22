# frozen_string_literal: true

module Mastodon
  module Version
    module_function

    def major
      1
    end

    def minor
      4
    end

    def patch
      7
    end

    def pre
      '8d6c3cd4'
    end

    def commit
      'e183fd7c'
    end

    def to_a
      [major, minor, patch, pre, commit].compact
    end

    def to_s
      to_a.join('.')
    end
  end
end
