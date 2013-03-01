module RmDigest
  class SHA1
    
    class << self

      def hexdigest(string, encoding = NSUTF8StringEncoding)
        return nil if string.nil?
        RmDigest::Util.toNSData(string, encoding).SHA1HexDigest
      end
      
      def digest(string, encoding = NSUTF8StringEncoding)
        return nil if string.nil?
        RmDigest::Util.toNSData(string, encoding).SHA1Digest
      end
    
    end

  end
end
