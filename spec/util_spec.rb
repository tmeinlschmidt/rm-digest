describe 'simple util' do

  it "should create NSData" do
    data = RmDigest::Util.toNSData('test')
    data.class.should == NSConcreteMutableData
  end

end
