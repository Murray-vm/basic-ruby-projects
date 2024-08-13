def bubble_sort(array) 
sort_size = array.length

  until sort_size === 1 

    i = 1

    while i < sort_size do

      if array[i] < array[i - 1]
        array[i - 1], array[i] = array[i], array[i - 1]
      end

      i += 1
    end

    sort_size -= 1

  end

  array
end


puts bubble_sort([4,3,78,2,0,2])
[3, 4, 2, 78, 0, 2]