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

def bubble_sort_by(array)
    sorted = false
    while sorted == false
        sorted = true
        array.each_with_index do |i, index|
            if  index < array.size - 1 && yield(array[index],array[index+1]).positive?
                array[index], array[index+1] = array[index+1], array[index]
                sorted = false
            end
        end
    end
    array
end

my_array = [4,3,78,2,0,2]
p buble_sort(my_array)

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end
