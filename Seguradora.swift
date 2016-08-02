//Classe Seguradora

class Seguradora{
	
	//Atributos
	var valor : Int = 0 
	var tipo : Int?	
	var adicionalIdade : Int?
	var adicionalGenero : Int?
	var adicionalEstadoCivil : Int?
	var adicionalEndereco : Int?
	var adicionalPrecoCarro : Int?

	//Instancia de Classes
	let pessoa = Pessoa()
	let endereco = Endereco()
	let carro = Carro()
	
	//Método Construtor (Inicializará com os formulários, após nos retorna o relatório final
	init(){

		self.questionarioPessoal()
		self.calculaAdicionalIdade()
		self.calculaAdicionalGenero()
		self.calculaAdicionalEstadoCivil()
		self.questionarioEndereco()		
		self.calculaAdicionalEndereco()
		self.questionarioCarro()
		self.calculaAdicionalPrecoCarro()
		self.calculaOrcamento()
		
	}

	//Converte o numero que foi inserido pelo usuário em inteiro (Ou converte let myInt: Int? = Int(myString)
	func recebeNumeroInteiro() -> Int{
		if let rl = readLine(){
			if let rli = Int(rl){
				return rli
			}
		}
		return 0
	}	
	
	
	//Funções de questionário
	//-----------------------------------------------------------------------------------------------------------------	
	//Questionário de levamento de dados do usuário
	func questionarioPessoal(){
		
		print("\n\n\n\n\t\t\t\t\tSimulação de Seguro")
		print("Informe seu Primeiro nome : ")
		pessoa.nome = readLine()
		print("Informe seu Sobrenome : ")
		pessoa.sobrenome = readLine()
		print("Informe sua idade : ")
		pessoa.idade = recebeNumeroInteiro()
		print("Informe seu Genero (Masculino ou Feminino - Padrão Masculino) : ")
		pessoa.genero = readLine()
		print("Informe seu estado civil (Solteiro ou Casado - Padrão Solteiro) : ")
		pessoa.estadoCivil = readLine()	
				
	}
	
	//Questionário referente ao endereco
	func questionarioEndereco(){

		print("Local Perigoso (Sim ou Nao): ")
		pessoa.perigosa = readLine()

	}
	
	//Questionário referente aos dados do carro
	func questionarioCarro(){

		print("Informe o preço :")
		carro.preco = recebeNumeroInteiro()

	}


	//-----------------------------------------------------------------------------------------------------------------	

	//Funções de Calculo
	
	//Função que calcula quanto será o adicional para pela idade da pessoa
	func calculaAdicionalIdade(){

		if pessoa.idade <= 30 {
			self.adicionalIdade = 200
			self.valor = self.valor + self.adicionalIdade!
		}
		else {
			self.adicionalIdade = 100 
			self.valor = self.valor + self.adicionalIdade!
		}
	}
	
	//Função que calcula quanto será o adicional para o sexo da pessoa
	func calculaAdicionalGenero(){
		
		if pessoa.genero == "Feminino" || pessoa.genero == "feminino" || pessoa.genero == "F" || pessoa.genero == "f" {
			pessoa.genero = "Feminino"			
			self.adicionalGenero = 200
			self.valor = self.valor + self.adicionalGenero!
		}
		else{
			pessoa.genero = "Masculino"
			self.adicionalGenero = 100
			self.valor = self.valor + self.adicionalGenero!
		}	
	}
	
	//Função que calcula quanto será o adicional por estado civil
	func calculaAdicionalEstadoCivil(){
		
		if pessoa.estadoCivil == "Casado" {			
			self.adicionalEstadoCivil = 200
			self.valor = self.valor + self.adicionalEstadoCivil!
		}
		else{
			pessoa.estadoCivil = "Solteiro"
			self.adicionalEstadoCivil = 100
			self.valor = self.valor + self.adicionalEstadoCivil!
		}	
	}

	//Função que calcula região perigosa
	func calculaAdicionalEndereco(){
		
		if pessoa.perigosa == "Nao" || pessoa.perigosa == "N" || pessoa.perigosa == "NO" || pessoa.perigosa == "n" || pessoa.perigosa == "nao" {			
			self.adicionalEndereco = 200
			self.valor = self.valor + self.adicionalEndereco!
		}
		else{
			pessoa.perigosa = "Sim"
			self.adicionalEndereco = 100
			self.valor = self.valor + self.adicionalEndereco!
		}	
	}
	
	//Função calcula adicional Valor do carro
	func calculaAdicionalPrecoCarro() {
		
		if carro.preco <= 10000 {
			
			self.adicionalPrecoCarro = 500
			self.valor = self.valor + self.adicionalPrecoCarro! 
   	
		}else {
			self.adicionalPrecoCarro = 1000
			self.valor = self.valor + self.adicionalPrecoCarro!
		}
		

	}
	//-----------------------------------------------------------------------------------------------------------------

	//Função que apresentará o orcamento	
	func calculaOrcamento(){

		print("================================================================================")

		print("\t\t\t\tRelatório Final")
		print("\n\t\tDados Pessoais\n")
		print("Senhor(a) : \(pessoa.nome!) \(pessoa.sobrenome!)")
		print("Sua Idade : \(pessoa.idade!)")
		print("Seu Genero : \(pessoa.genero!)")
		print("Seu Estado Civil : \(pessoa.estadoCivil!)")
		print("Seu endereço é perigoso : \(pessoa.perigosa!)")
		print("Valor do seu veiculo : \(carro.preco!)")
		print("\n\t\tValores")		
		print("\nAdicional Idade R$: \(self.adicionalIdade!)")
		print("\nAdicional Genero R$: \(self.adicionalGenero!)")
		print("\nAdicional Estado Civil R$: \(self.adicionalEstadoCivil!)")
		print("\nAdicional Endereço R$: \(self.adicionalEndereco!)")
		print("\nAdicional Veiculo R$: \(self.adicionalPrecoCarro!)")
		print("\n\n\nValor do Seguro : R$\(self.valor)\n")
		
	}
}

