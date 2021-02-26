# PlantFinder

Welcome to PlantFinder! A ruby gem that allows a user to enter the common name of a plant species into their terminal, and receive an output of the species classification (scientific name, family common name, genus, and family). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'plant_finder'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install plant_finder

## Usage
When prompted with the following line, type in your plant species common name into the terminal.
```bash
Please enter the common name of a plant species (enter 'exit' to close program):
```
For example, if you were to enter:
```
Evergreen oak
```
The program would return:
```
-Scientific name: Quercus rotundifolia 

-Family common name: Beech family 

-Family: Fagaceae

-Genus: Quercus 
```
Once running, the program will keep running until prompted, which can be done by entering 'exit':
```
exit
```
You know the program has quit when the user recieves the message:
```
Thank you for using Plant Base!
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[mmeurer00]/plant_finder.
