local numeros = {20, 338, 10, 15, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110}
maior = 0

for i = 0, #numeros do
	if numeros[i] > maior then
		maior = numeros[i]
	end
end

print("Maior numero encontrado: ", maior)