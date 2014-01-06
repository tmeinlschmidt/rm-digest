module RmDigest
  class SHA256
    
    class << self

      def hexdigest(string, encoding = NSUTF8StringEncoding)
        return nil if string.nil?
        RmDigest::Util.toNSData(string, encoding).SHA256HexDigest
      end
      
      def digest(string, encoding = NSUTF8StringEncoding)
        return nil if string.nil?
        RmDigest::Util.toNSData(string, encoding).SHA256Digest
      end
    
    end

  end
end