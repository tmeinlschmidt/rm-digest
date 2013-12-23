describe "SHA256 hash" do

  it 'should be true' do
    true.should == true
  end
    
  it 'should compute empty sha256 hexdigest' do
    hash = RmDigest::SHA256.hexdigest('')
    hash.should == "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  it 'should compute sha1 nil hexdigest' do
    hash = RmDigest::SHA256.hexdigest(nil)
    hash.should == nil
  end


  it 'should compute sha1 hexdigest' do
    hash = RmDigest::SHA256.hexdigest('testhash')
    hash.should == "4bc75035d73f6083683e040fc31f28e0ec6d1cbce5cb0a5e2611eb89bceb6c16"
  end

  it 'should compute sha1 digest' do
    hash = RmDigest::SHA256.digest('testhash')
    byte_arr = hash.to_str.each_byte.map{|l| l}
    byte_arr.should == [75, 199, 80, 53, 215, 63, 96, 131, 104, 62, 4, 15, 195, 31, 40, 224, 236, 109, 28, 188, 229, 203, 10, 94, 38, 17, 235, 137, 188, 235, 108, 22]
  end

end