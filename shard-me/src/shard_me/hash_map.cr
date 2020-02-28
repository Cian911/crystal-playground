module Shard::Me
  class HashMap
    @hash : Array(String)

    def initialize(size : Int32)
      @hash = Array.new(size)
    end

    def set(data : String) : Bool
    end

    def get(index : Int32) : String
    end

    private def hash_code
      return 0
    end
  end
end
