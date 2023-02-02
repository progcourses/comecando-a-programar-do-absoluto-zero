programa
{
	
	funcao inicio()
	{
		cadeia vetor[10]
		inteiro tamanho = 10
		inteiro i = 0
		inteiro posicaoDeAlteracao
		inteiro posicaoDeDelecao
		cadeia acao
		cadeia termoDePesquisa
		cadeia novoValor
		
		enquanto(i < 10) {
			leia(vetor[i])
			i = i + 1
		}

		i = 0

		enquanto(i < 10) {
			escreva(vetor[i])
			i = i + 1
		}

		i = 0

		escreva("Informe uma Ação: A - Alteração, C - Consulta, D - Deleção: ")
		leia(acao)

		se(acao == "A") {
			escreva("Por favor, informe uma posição para ser alterada: ")
			leia(posicaoDeAlteracao)

			escreva("Por favor, informe um novo valor para a posição informada: ")
			leia(novoValor)

			enquanto(i < 10) {
				se (i == posicaoDeAlteracao) {
					vetor[i] = novoValor
				}
				i = i + 1
			}
			
		} senao se(acao == "C") {
			escreva("Por favor, informe um termo de pesquisa: ")
			leia(termoDePesquisa)

			enquanto(i < 10) {
				se (vetor[i] == termoDePesquisa) {
					escreva("A posição do registro é " + i)
				}
				i = i + 1
			}
			
		} senao se (acao == "D") {
			escreva("Por favor, informe uma posição para ser deletada: ")
			leia(posicaoDeDelecao)

			enquanto(i < 10) {
				se (i == posicaoDeDelecao) {
					vetor[i] = ""
				}
				i = i + 1
			}
		}

		i = 0

		enquanto(i < 10) {
			escreva(vetor[i])
			i = i + 1
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 721; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */