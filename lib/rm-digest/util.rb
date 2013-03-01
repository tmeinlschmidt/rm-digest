module RmDigest

  class Util
  
    def self.toNSData(string, encoding = NSUTF8StringEncoding)
      string.dataUsingEncoding(encoding)
    end

  end

end
