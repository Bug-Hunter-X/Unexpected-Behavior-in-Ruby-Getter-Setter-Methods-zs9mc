```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    # Add input validation or other logic here to handle potential issues.
    # For example: check for nil values or perform data type checks.
    if new_value.is_a?(Numeric)
      @value = new_value
    else
      raise "Invalid value type. Must be a number."
    end
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.value = 20
puts my_object.value # Output: 20

begin
  my_object.value = "hello"
rescue => e
  puts e.message # Output: "Invalid value type. Must be a number."
end
```