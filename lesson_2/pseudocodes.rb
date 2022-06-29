=begin

# A method that returns the sum of two integers
START
  GET number1 = the first operand
  GET number2 = the second operand
  SET addition = the sum of number1 plus number2
  PRINT addition
END


# A method that takes an array of strings, and returns a string that is all those strings concatenated together
START
  # Given an array of string called "words"
  SET resulting_string = this variable will hold the concatenation of all the strings in the array

  WHILE iterator <= length of words
    SET current_word = value within words collection at 'iterator'
    resulting_string = resulting_string + current_word
    go to the next iteration
  PRINT resulting_string
END


# A method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.
# For instance: everyOther([1,4,7,2,5]) # => [1,7,5]
START
  # Given a collection of numbers called "numbers"
  SET everyOther = an empty array that will be used to store the every other value from the original array
  WHILE iterator <= length of numbers
    SET current_number = value within numbers at space 'iterator'
    IF iterator value is an odd number
      SET everyOther[iterator] = current_number

    go to the next iteration
  PRINT everyOther
END


# A method that determines the index of the 3rd occurrence of a given character in a string.
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x').
# If the given character does not occur at least 3 times, return nil.
START
  GET word = string provided by the user to iterate over and extract the 3rd ocurrence of a character.
  GET character = character provided by the user that will be searched on 'word'

  SET occurrences = 0, variable used to keep track how many times 'character' appears on 'word'
  SET index = 0, variable to store the index of the third occurrence if it exists

  WHILE iterator <= length of word
    SET current_char = character from 'word' at iterator space
    IF current_char is exacly the same 'character'
      occurrences value is increased by one

    IF occurrences value is exacly 3
      index = iterator value

    go to the next iteration

  IF index values is greater than 0
    PRINT index
  ELSE
    return nil
END


# A method that takes two arrays of numbers and returns the result of merging the arrays.
# The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.
# For instance: merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
START
  #given two arrays namned "array1" and "array2"
  SET resulting_length = length of array1 + length of array2
  SET resulting_array = [], empty array that will hold the merge of array1 and array2

  WHILE iterator <= resulting_length
    IF iterator value is even
      SET resulting_array[iterator] = extract a value from array1
    ELSE
      SET resulting_array[iterator] = extract a value from array2

  PRINT resulting_array
END

=end
