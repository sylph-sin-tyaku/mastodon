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
      1
    end

    def pre
      nil
    end

    def flags
      ''
    end

    def commit
      '.41c3389d'
    end

    def sintyaku
      '.d15a0d6c'
    end

    def to_a
      [major, minor, patch, pre].compact
    end

    def to_b
      [commit, sintyaku].compact
    end

    def to_s
      [to_a.join('.'), flags, to_b].join
    end
  end
end
