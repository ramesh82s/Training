puts "Executing: #{__FILE__}"
require 'rspec'
describe "First Test"do
  it "returnt Do" do
    expect('r').to eql('r1')
  end
  it "will expect file not to exist" do
    expect(File).not_to exist("path/to/file")
  end
  it"is betwwen the given number" do
    expect(2).to be_between(1,3)
    expect(2).to be < 5
  end
end
