f = open("input/1_1.txt");
lines = readlines(f)
close(f)

let
	best = 0
	sum = 0
	for line in lines
		if line == ""
			if sum > best
				best = sum
			end
			sum = 0
		else
			sum += parse(Int64, line)
		end
	end
	println(best)
end
