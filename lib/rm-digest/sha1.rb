module RmDigest
  module SHA1
    
    class << self

      def hexdigest(string, encoding = NSUTF8StringEncoding)
        RmDigest::Util.toNSData(string, encoding).SHA1HexDigest
      end
      
      def digest(string, encoding = NSUTF8StringEncoding)
        RmDigest::Util.toNSData(string, encoding).SHA1Digest
      end
    
    end

  end
end
