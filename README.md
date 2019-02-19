# CodeChallenge

This gem take command line input to enter key-value pairs into a dictionary. It also allows you to fetch or replace existing values.

## Installation

    $ gem install code_challenge

## Usage

Type 'key-value' into command line. A prompt will appear, where you can enter commands. Available commands are: put, fetch, and exit. Using 'put' will allow you to enter a new key-value pair. The command must be formatted as "put key value".

    $ key-value
    >put key value
    ok

    >

Using 'fetch' with an existing key will return that key's value. Format as "fetch key".

   $ key-value
    >fetch key
    value

    >

Using 'exit' will close the program.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/otomatonom/git-gud

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
