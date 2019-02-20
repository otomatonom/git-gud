# code_challenge.rb
require "stringio"
require "code_challenge"

RSpec.describe CodeChallenge do
  describe "#main" do
    it "should cycle through the loop" do

      # attempted to mimic user input for gets.split
      io = StringIO.new
      io.puts "exit"
      $stdin = io

      # attempted to then call main() method using the defined $stdin for user_input
      @code = CodeChallenge.new.main()
      @code.gets

      # test fails; I was unable to successfully call main() with input without gets.split throwing an error.
    
    end
  end
end
