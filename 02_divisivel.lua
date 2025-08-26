print("Digite o inicio do intervalo")
m = io.read("*n")
print("Digite o final do intervalo")
n = io.read("*n")

print("Agora digite o numero que deseja verificar os multiplos")
x = io.read("*n")

for i = m, n do
	if i % x == 0 then
		print(i)
	end
end