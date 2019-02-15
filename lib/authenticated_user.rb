require_relative 'user'
class Authenticated_user
    def initialize(name, bio, age, password)
        @user = User.new(name, bio, age)
        @password = password
        @authenticated = false
    end

    def authenticate(candidate_password)
        return @authenticated = true if candidate_password == @password
        @authenticated = false
      end

    def profile
       return "You are not authenticated!!!" unless @authenticated == true
        @user.profile
    end  
end