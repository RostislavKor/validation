# Simple validation for ruby objects

For using validations, include Validation to your class:

```ruby
require 'validation'

class User
  include Validation
end
```

For adding additional validators:
* Create new file under `validations` folder
* Name it just like your validation, for example, file with name `numericality.rb`, can be called as:
```ruby
validate :name, numericality: true
```

For running examples execute:
```
bundle install
rspec
```


