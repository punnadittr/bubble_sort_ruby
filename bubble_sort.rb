def bubble_sort(array)
    # initialize the counter to -1 to avoid confusion
    swap_counter = -1
    # put the array length into variable to avoid executing again
    arr_length = array.length
    # repeat as many times as length - 1
    (arr_length-1).times do |counter|
        swap_counter = 0
        array.each_index do |i|
            # skip to the next round if the item is already bubbled up
            next if i == arr_length-counter
            # avoid nil item
            unless array[i+1].nil?
                # swap if the first item is more than the second
                if array[i] > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                    # increment the swap_counter by 1 each time there is a swap
                    swap_counter += 1
                end
            end
        end
        # break if nothing is swapped
        break if swap_counter == 0
    end
    array
end