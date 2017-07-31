# frozen_string_literal: true

module Mastodon
  module Version
    module_function

    def major
      1
    end

    def minor
      5
    end

    def patch
      0
    end

    def pre
      nil
    end

    def flags
      'rc2'
    end

    def commit
      'c71874b8'
    end

    def sintyaku
      '54be3452'
    end

    def to_a
      [major, minor, patch, pre].compact
    end

    def to_s
      [to_a.join('.'), flags, commit, sintyaku].join('.')
    end
  end
end
