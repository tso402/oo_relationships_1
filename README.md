# oo_relationships_1
## Exercise 1
### Draw a diagram of the above code. Think about the best way to denote this forwarding relationship.

## Exercise 2
``` 
class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
  end

  def authenticate(candidate_password)
    return true if candidate_password == @password
    false
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end
```