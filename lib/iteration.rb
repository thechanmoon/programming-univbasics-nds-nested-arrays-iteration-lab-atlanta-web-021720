def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair\
  retArray = []
  src.length.times do |index_i|
      retArray.push("I love #{src[index_i][0]} and #{src[index_i][1]} on my pizza")
  end
  return retArray
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  retArray =[]
  src.length.times do |index_i|
      retArray.push(src[index_i][0]>src[index_i][1]?src[index_i][0]:src[index_i][1])
  end
  return retArray
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  retVal = 0
  src.length.times do |index_i|
      retVal += (src[index_i][0]%2 == 0 && src[index_i][1]%2 == 0 ? src[index_i][0]+src[index_i][1]: 0)
  end
  return retVal
end
