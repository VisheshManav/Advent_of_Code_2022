f = open("input/1_1.txt");
lines = readlines(f)
close(f)

let
top_three = [0, 0, 0]
sum = 0
for line in lines
    if line == ""
        if sum > top_three[1]
            top_three[3] = top_three[2]
            top_three[2] = top_three[1]
            top_three[1] = sum
        elseif sum > top_three[2]
            top_three[3] = top_three[2]
            top_three[2] = sum
        elseif sum > top_three[3]
            top_three[3] = sum
        end
        sum = 0
    else
        sum += parse(Int64, line)
    end
end
println(top_three[1] + top_three[2] + top_three[3])
end
