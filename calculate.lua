path = io.write("File path:")
path = io.read()
result = {}
gpa = {}
final = 0
string1 = 0
local levels = {
    CP = {4, 3, 2, 1}, Honors = {4.5, 3.5, 2.5, 1.5}, AP = {5, 4 ,3 ,2}, AP2 = {5.5, 4.4, 3.5, 2.5}
}




local file = io.open(path, "r")
for lines in io.lines(path) do
    table.insert(result, lines)
end

for i = 1, #result do
    level = string.match(result[i], "%S+")
    grade = string.reverse(result[i])
    grade = string.match(grade, "%S+")
    if grade == "A" then do
        table.insert(gpa, levels[level][1])
    end
    elseif  grade == "B" then do
        table.insert(gpa, levels[level][2])
    end
    elseif  grade == "C" then do
        table.insert(gpa, levels[level][3])
    end
    elseif  grade == "D" then do
        table.insert(gpa, levels[level][4])
    end
    end
    end



for i, v in pairs(gpa) do
    final = final + v
end
print("Your final GPA is", string.format("%2.1f", final/#gpa))