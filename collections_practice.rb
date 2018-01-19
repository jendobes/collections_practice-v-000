def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a,b|
    if a==b
      0
    elsif a > b
      -1
    else a < b
      1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a,b|
    if a==b
      0
    elsif a.length > b.length
      1
    else a.length < b.length
      -1
    end
  end
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  collection = []
  array.each do |word|
    word[2]= "$"
  collection << word
end
collection
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  array.inject {|sum, n| sum + n}
end

def add_s(array)
  array.each_with_index.collect {|word, index| if index != 1 then word << "s" end}
end
