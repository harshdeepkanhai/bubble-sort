def bubble_sort(arr)
    n = arr.size
    for i in 0...n
      swapped = false
      # as last ith elements get sorted in the end as bubbles
      for j in 0...n-i-1 
        if arr[j] > arr[j+1]
          arr[j], arr[j+1] = arr[j+1], arr[j]
          swapped = true
        end
      end
      break if swapped == false
    end
    arr
  end
  
  p bubble_sort([32, 4, 1312, 12, 45])