def buble_sort(array)
    sorted = false
    while sorted == false
        sorted = true
        array.each_with_index do |i, index|
            if  index < array.size - 1 && array[index] > array[index+1]
                array[index], array[index+1] = array[index+1], array[index]
                sorted = false
            end
        end
    end
    array
end

my_array = [1,3,5,2,7,9]
puts buble_sort(my_array)
