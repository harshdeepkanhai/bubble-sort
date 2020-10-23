def bubble_sort(arr)
    n = arr.size
    (0...n).each |i|
      swapped = false
      # as last ith elements get sorted in the end as bubbles
      (0...n - i - 1).each |j| 
        if arr[j] > arr[j + 1]
          arr[j], arr[j + 1 ] = arr[j + 1], arr[j]
          swapped = true
        end
      end
      break if swapped == false
    end
    arr
  end
  
  p bubble_sort([32, 4, 1312, 12, 45])