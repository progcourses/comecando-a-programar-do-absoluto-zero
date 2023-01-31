programa
{
	
	funcao inicio()
	{
		cadeia operacao = ""
		real resultado = 0.0
		real a = 0.0
		real b = 0.0

		escreva("Informe uma operação de Soma, Subtração, Multiplicação, ou Divisão ")
		leia(operacao)

		escreva("Informe um valor A ")
		leia(a)
		escreva("Informe um valor B ")
		leia(b)


		se (operacao == "Soma") {
			resultado = soma(a, b)	
		} senao se (operacao == "Subtração") {
			resultado = subtracao(a, b)	
		} senao se (operacao == "Multiplicação") {
			resultado = multiplicacao(a, b)	
		} senao se (operacao == "Divisão") {
			resultado = divisao(a, b)
		}

		escreva("Resultado é: ")
		escreva(resultado)
	}

	funcao real soma (real x, real y) {
		retorne x + y
	}

	funcao real subtracao (real x, real y) {
		retorne x - y
	}

	funcao real multiplicacao (real x, real y) {
		retorne x * y
	}

	funcao real divisao (real x, real y) {
		retorne x / y
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 692; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */