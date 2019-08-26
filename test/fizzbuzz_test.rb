require_relative 'test_helper'

describe "fizzbuzz method" do
  
  it "gives back 'Fizz' for a multiple of three" do
    
    # Arrange    
    
    # Act
    result = fizzbuzz(3)
    
    # Assert
    expect(result).must_equal "Fizz"
  end
  
  it "includes 'Fizz' for all multiples of three" do
    # Arrange    
    multiples_of_three = [3, 6, 9, 12, 72, 75]
    
    multiples_of_three.each do |num|
      # Act
      result = fizzbuzz(num)
      
      # Assert
      expect(result).must_include "Fizz", "The value of num was #{num} when the test failed"
    end
  end
  
  it "includes 'Buzz' for all multiples of five" do
    # Arrange
    100.times do
      # Arrange
      multiple_of_five = 5 * rand(1_000)
      
      # Act
      result = fizzbuzz(multiple_of_five)
      
      # Assert
      expect(result).must_include "Buzz"
    end
  end
  
  it "gives back 'FizzBuzz' for a multiple of 3 and 5" do
    # Act
    result = fizzbuzz(15)
    
    # Assert
    expect(result).must_equal "FizzBuzz"
  end
  
  it "gives back the number for non-multiples of 5 and 3" do
    non_multiples = [1,2,4,8,16,17]
    
    non_multiples.each do |num|
      expect(fizzbuzz(num)).must_equal num, "Num was #{num} when the test failed."
    end
  end
end