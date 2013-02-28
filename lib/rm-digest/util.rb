module RmDigest

  module Util
  
    class << self

      def toNSData(string, encoding = NSUTF8StringEncoding)
        string.dataUsingEncoding(encoding)
      end

    end
  end

end
