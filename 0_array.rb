def remove_dups(arr)
  result = []
  arr.each do |e|
    if !result.include?(e)
      result << e
    end
  end
  result
end
print(remove_dups([1,2,3,3,3,4,5,2]))

def two_sum(arr)
  result = []
  arr.each_index do |idx1|
    ((idx1+1)..arr.length-1).each do |idx2|
      if arr[idx1] + arr[idx2] == 0
        result << [idx1,idx2]
      end
    end
  end
  result
end

print(two_sum([-1,0,2,-2,1]))

def my_transpose(dd)
  cols = Array.new(dd.first.count) { Array.new(dd.first.count)}
  dim = dd.first.count
  dim.times do |i|
    dim.times do |j|
      cols[j][i] = dd[i][j]
    end
  end
  cols
end
print(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]]))

def stock_picker(arr)
  temp = 0
  save = []
  arr.each_index do |i1|
    [i1+1..arr.length].each do |i2|
      if arr[i2]-arr[i1] > temp
        temp = arr[i2]-arr[i1]
        save << arr[i1] << arr[i2]
      end
    end
  end
  save
end
