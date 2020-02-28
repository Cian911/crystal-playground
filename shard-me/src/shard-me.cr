require "./shard_me/version.cr"

module Shard::Me
  class Palindrome
    def palindrome?(str : String) : Bool
      analyze(str)
    end

    private def analyze(str : String) : Bool
      str_len = str.size
      str_start = 0
      str_end = str_len - 1

      while str_start <= str_len && str_end >= 0
        return false if str[str_start] != str[str_end]
        str_start += 1
        str_end -= 1
      end

      return true
    end
  end
end
