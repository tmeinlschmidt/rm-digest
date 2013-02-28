module RmDigest
  module MD5
    
    class << self
      
      def hexdigest(string, encoding = NSUTF8StringEncoding)
        RmDigest::Util.toNSData(string, encoding).MD5HexDigest
      end
      
      def digest(string, encoding = NSUTF8StringEncoding)
        RmDigest::Util.toNSData(string, encoding).MD5Digest
      end
    
    end

  end
end
