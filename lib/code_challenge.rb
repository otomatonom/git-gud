require "code_challenge/version"

module CodeChallenge
  class Error < StandardError; end
    
  # ------ Description -------
  # This program will run by typing 'key-value' into your command line.
  #  $ key-value
  #  >

  # Available commands are: put, fetch, exit

  class  ManageHash

    # This method takes the user input and returns the key.
    def make_key(array)
        key = array[1]
        return key
    end

    # This method takes the user input and returns the value.
    def make_value(array)
        value = array[2]
        return value
    end

    # This method will varify and FETCH an existing entry.
    def fetch_entry(dict, key)
        if dict.has_key?(key) == true
            print dict[key], "\n"
        else
            print "Value not found.\n"
        end
    end
  end


  def self.main()

    new_dict = Hash.new
    hash = ManageHash.new()

    #new_dict["example"] = "hello world"

    command = "Let's go!"

    until command == 'exit'
      print "\n>"
      user_input = gets.split()
      #print user_input

      command = user_input[0]
      #print command + "\n"


      if command == 'put' || command == 'fetch'

          dict_key = hash.make_key(user_input)
          #print dict_key + "\n"

          if command == 'put' && user_input.size == 3
              dict_value = hash.make_value(user_input)

              new_dict[dict_key] = dict_value
              print "ok\n"
          end

          if command == 'fetch' && user_input.size == 2
              hash.fetch_entry(new_dict, dict_key)
          end

          if command == 'fetch' && user_input.size != 2 || command == 'put' && user_input.size != 3
              print "Invalid syntax.\n"
          end

      elsif command == 'exit'
          break

      else
          print "Unknown command. Known commands are: put, fetch, exit\n"

      end
    end

    print "\nBye!\n\n"

  end

end

CodeChallenge.main()