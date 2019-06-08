# Text Gen

*"There are only two hard things in Computer Science: cache invalidation and naming things."*

Text Gen is a small Ruby Gem providing a collection of functions to generate 
various fun pieces of text. 

## Usage

### Command Names 
`text-gen cmdname` generates 80's-style names for computer programs by selecting 8-letter English words from a dictionary.

```bash
$ text-gen cmdname -c 5         
CHIPMUNK
FORCIBLE
ORGANIST
PICKLING
UNEASIER
```

### Prototype Codenames
`text-gen prototype` will generate prototype ids, which are skunkworks-style codenames for your secret projects. Codenames are two capital letters, a dash, and a four-digit number divisible by 5. 
  
```bash
$ text-gen prototype -c 5
IQ-5800
EI-5140
DT-6280
AU-2605
GW-4605
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, 
run `rake test` to run the tests. You can also run `bin/console` for an 
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 
To release a new version, update the version number in `version.rb`, and then 
run `bundle exec rake release`, which will create a git tag for the version, 
push git commits and tags, and push the `.gem` file 
to [rubygems.org](https://rubygems.org).