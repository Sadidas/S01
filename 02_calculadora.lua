local simbolos = {"+", "-", "*", "/"}

print("Digite o primeiro numero")
n1 = io.read("*n")
print("Digite o segundo numero")
n2 = io.read("*n")

while true do
	print("Digite o simbolo da operacao (+, -, *, /)")
	io.read()
	simbolo = io.read()
	
	local valido = false
	for i = 1, #simbolos do
		if simbolo == simbolos[i] then
			valido = true
			break
		end
	end

	if valido then
		break
	else
		print("Simbolo invalido")
	end
end

if simbolo == "+" then
	print(n1 + n2)
	elseif simbolo == "-" then
		print(n1 - n2)
		elseif simbolo == "*" then
			print(n1 * n2)
			elseif simbolo == "/" then
				print(n1 / n2)
end

