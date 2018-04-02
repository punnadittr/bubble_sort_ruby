def bubble_sort_by(array)
    swap_counter = -1
    arr_length = array.length
    (arr_length-1).times do |counter|
        swap_counter = 0
        array.each_index do |i|
            next if i == arr_length-counter
            unless array[i+1].nil?
                if yield(array[i],array[i+1]) > 0
                    array[i], array[i+1] = array[i+1], array[i]
                    swap_counter += 1
                end
            end
        end
        break if swap_counter == 0
    end
    array
end