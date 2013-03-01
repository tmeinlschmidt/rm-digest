describe "SHA1 hash" do

  it 'should be true' do
    true.should == true
  end
    
  it 'should compute empty sha1 hexdigest' do
    hash = RmDigest::SHA1.hexdigest('')
    hash.should == 'da39a3ee5e6b4b0d3255bfef95601890afd80709'
  end

  it 'should compute sha1 nil hexdigest' do
    hash = RmDigest::SHA1.hexdigest(nil)
    hash.should == nil
  end


  it 'should compute sha1 hexdigest' do
    hash = RmDigest::SHA1.hexdigest('testhash')
    hash.should == 'f4e5afd5b5449242481ebff8635cf129de2b9b22'
  end

  it 'should compute sha1 digest' do
    hash = RmDigest::SHA1.digest('testhash')
    byte_arr = hash.to_str.each_byte.map{|l| l}
    byte_arr.should == [244, 229, 175, 213, 181, 68, 146, 66, 72, 30, 191, 248, 99, 92, 241, 41, 222, 43, 155, 34]
  end

end
