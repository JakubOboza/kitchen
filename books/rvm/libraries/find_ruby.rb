# figure out where ruby is.  We have this kind of cumbersome thing
# since rvm may or may not be installed.

class Chef
  class Recipe
    def find_ruby
      

      if File.exists?("/usr/local/bin/rvm")
        return `rvm default exec which ruby`.chomp
      else
        return "/usr/bin/ruby"
      end
    end
  end
end
