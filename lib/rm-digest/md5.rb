module RmDigest
  class MD5
    
    class << self
      
      def hexdigest(string, encoding = NSUTF8StringEncoding)
        return nil if string.nil?
        RmDigest::Util.toNSData(string, encoding).MD5HexDigest
      end
      
      def digest(string, encoding = NSUTF8StringEncoding)
        return nil if string.nil?
        RmDigest::Util.toNSData(string, encoding).MD5Digest
      end
    
    end

  end
end
