def stock_picker(array)
    new_arr = []
    differential = 0
    (0...array.length).each do |i|
        (i + 1...array.length).each do |j|
            if array[j] - array[i] > differential
                differential = array[j] - array[i]
                new_arr << [i, j]
            end
        end
    end
    new_arr[-1]
end