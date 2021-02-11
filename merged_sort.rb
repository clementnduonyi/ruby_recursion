#Merged sort with recursion methodology

def merged_sort(arr)
    if arr.length < 2
        return arr
    else
        mid_point = arr.length/2

        
        left_half = merged_sort(arr[0...mid_point])
        right_half = merged_sort(arr[mid_point..arr.length])
        
        sorted_arr = []
        until left_half.empty? || right_half.empty?
            if left_half[0] < right_half[0]
                sorted_arr << left_half.shift 
            else 
                sorted_arr << right_half.shift
            end
        end
        sorted_arr += left_half + right_half
    end
end

p merged_sort([7, 6, 4, 3, 1, 4, 0, 8])