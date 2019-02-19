RSpec.describe CodeChallenge do
  it "has a version number" do
    expect(CodeChallenge::VERSION).not_to be nil
  end

  it "should return [ok] if the user puts a key-value pair in the hash" do
    CodeChallenge.main().stub(:gets) {"put stuff here"}
    expect(CodeChallenge.main()).to eq(puts "ok\n")
    CodeChallenge.main().stub(:gets) {"exit"}
    expect(CodeChallenge.main()).to eq(puts "\nBye!\n\n")
  end
end
