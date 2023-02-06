programa
{
	
	funcao inicio()
	{
		cadeia matriz[10][2]
		inteiro tamanho = 10
		inteiro linhaDeAlteracao
		inteiro colunaDeAlteracao
		inteiro linhaDeDelecao
		inteiro colunaDeDelecao
		inteiro posicaoDeDelecao
		cadeia acao
		cadeia termoDePesquisa
		cadeia novoValor
		
		para(inteiro i = 0; i < 10; i++) {
			para(inteiro j = 0; j < 2; j++) {
				escreva("Informe um valor para a linha " + i + " e coluna " + j + ": ")
				leia(matriz[i][j])
			}
		}


		para(inteiro i = 0; i < 10; i++) {
			para(inteiro j = 0; j < 2; j++) {
				escreva("Valor da linha " + i + ", coluna " + j + ": ")
				escreva(matriz[i][j])
			}
		}

		escreva("Informe uma Ação: A - Alteração, C - Consulta, D - Deleção: ")
		leia(acao)

		se(acao == "A") {
			escreva("Por favor, informe a linha para ser alterada: ")
			leia(linhaDeAlteracao)

			escreva("Por favor, informe a coluna para ser alterada: ")
			leia(colunaDeAlteracao)

			escreva("Por favor, informe um novo valor para a posição informada: ")
			leia(novoValor)

			para(inteiro i = 0; i < 10; i++) {
				para(inteiro j = 0; j < 2; j++) {
					se (i == linhaDeAlteracao e j == colunaDeAlteracao) {
						matriz[i][j] = novoValor
					}
				}
			}
			
		} senao se(acao == "C") {
			escreva("Por favor, informe um termo de pesquisa: ")
			leia(termoDePesquisa)

			para(inteiro i = 0; i < 10; i++) {
				para(inteiro j = 0; j < 2; j++) {
					se (matriz[i][j] == termoDePesquisa) {
						escreva("A posição do registro linha: " + i + " e coluna: " + j)
					}
				}
			}
			
		} senao se (acao == "D") {
			escreva("Por favor, informe a linha para ser deletada: ")
			leia(linhaDeDelecao)

			escreva("Por favor, informe a coluna para ser deletada: ")
			leia(colunaDeDelecao)

			para(inteiro i = 0; i < 10; i++) {
				para(inteiro j = 0; j < 2; j++) {
					se (i == linhaDeDelecao e j == colunaDeDelecao) {
						matriz[i][j] = ""
					}
				}
			}
		}

		para(inteiro i = 0; i < 10; i++) {
			para(inteiro j = 0; j < 2; j++) {
				escreva("Valor da linha " + i + ", coluna " + j + ": ")
				escreva(matriz[i][j])
			}
		}

	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2067; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */