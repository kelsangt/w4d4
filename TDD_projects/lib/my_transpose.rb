def my_transpose(array)
    new_arr = []
    (0...array[0].length).each do |i|
        sub_arr = []
        array.each do |ele|
            sub_arr << ele[i]
        end
        new_arr << sub_arr
    end
    new_arr
end