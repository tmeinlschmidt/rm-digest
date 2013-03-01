describe "MD5 hash" do

  it 'should be true' do
    true.should == true
  end
    
  it 'should compute empty md5 hexdigest' do
    hash = RmDigest::MD5.hexdigest('')
    hash.should == 'd41d8cd98f00b204e9800998ecf8427e'
  end

  it 'should compute md5 nil hexdigest' do
    hash = RmDigest::MD5.hexdigest(nil)
    hash.should == nil
  end


  it 'should compute md5 hexdigest' do
    hash = RmDigest::MD5.hexdigest('testhash')
    hash.should == '082949a8dfacccda185a135db425377b'
  end

  it 'should compute md5 digest' do
    hash = RmDigest::MD5.digest('testhash')
    byte_arr = hash.to_str.each_byte.map{|l| l}
    byte_arr.should == [8, 41, 73, 168, 223, 172, 204, 218, 24, 90, 19, 93, 180, 37, 55, 123]
  end

end
