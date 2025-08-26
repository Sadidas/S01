local numeros = {20, 338, 10, 15, 33, 67, 89, 100, 44, 21, 34, 56, 78}
local pares = {}

for i = 1, #numeros do
	if numeros[i] % 2 == 0 then
		table.insert(pares, numeros[i])
	end
end

for i = 1, #pares do
	print(pares[i])
end
