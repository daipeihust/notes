
class MyClass
    def the_method
      "general method"
    end
end
  
mc = MyClass.new
def mc.the_method
"special for this instance."
end

mc.the_method