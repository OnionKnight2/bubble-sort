=begin 
    Each element is compared to the one next to it and
    they are swapped if the one on the left is larger than the one on the right.
    This continues until the array is sorted.

    #bubble_sort algorithm takes an array and returns a sorted array.
    l variable will keep track of a array length
    new_l variable will be used to stop sorting once there is no more elements to sort
    Until we sort all elements, swap elements using a,b = b,a
=end

def bubble_sort(array)
    l = array.length
    until l <= 1
        new_l = 0
        for i in 1...l
            if array[i - 1] > array[i]
                array[i - 1], array[i] = array[i], array[i - 1]
                new_l = i
            end
        end
        l = new_l
    end

    array
end

p bubble_sort([4,3,78,2,0,2])

