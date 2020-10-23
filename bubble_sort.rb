def bubble_sort(arr)
  n = arr.size
  (0...n).each do |i|
    swapped = false
    (0...n - i - 1).each do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break if swapped == false
  end
  arr
end

def bubble_sort_by(arr)
  n = arr.size
  (0...n).each do |i|
    swapped = false
    (0...n - i - 1).each do |j|
      arr[j], arr[j + 1], swapped = arr[j + 1], arr[j], true if yield(arr[j], arr[j + 1]).positive?
    end
    break if swapped == false
  end
  arr
end
