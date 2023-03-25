programa
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
	inteiro quantidadeDeRegistros = 0

	funcao alimentarMatriz() {
		para(inteiro i = 0; i < 10; i++) {
			para(inteiro j = 0; j < 2; j++) {
				escreva("Informe um valor para a linha " + i + " e coluna " + j + ": \n")
				leia(matriz[i][j])
			}
		}
	}

	funcao listarMatriz() {
		para(inteiro i = 0; i < 10; i++) {
			para(inteiro j = 0; j < 2; j++) {
				escreva(matriz[i][j] + " ")	
			}
			escreva("\n")
		}
	}

	funcao inserirUmDadoNaMatriz() {
		escreva("Informe um ID para o registro: \n")
		leia(matriz[quantidadeDeRegistros][0])

		escreva("Informe um valor para o registro: \n")
		leia(matriz[quantidadeDeRegistros][1])
		
		quantidadeDeRegistros = quantidadeDeRegistros + 1
	}

	funcao conultarDadoNaMatriz() {
		escreva("Por favor, informe um termo de pesquisa: ")
		leia(termoDePesquisa)
		
		para(inteiro i = 0; i < 10; i++) {
			para(inteiro j = 0; j < 2; j++) {
				se (matriz[i][j] == termoDePesquisa) {
					escreva("A posição do registro linha: " + i + " e coluna: " + j)
				}
			}
		}
	}

	funcao alterarDadoNaMatriz() {
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
	}

	funcao deletarDadoNaMatriz() {
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
	
	funcao inicio()
	{
		
		enquanto(verdadeiro) {
			escreva(" \n Informe uma Ação: A - Alteração, C - Consulta, D - Deleção, I - Inserir, L - Listar: ")
			leia(acao)
	
			se(acao == "A") {
				alterarDadoNaMatriz()
			} senao se(acao == "C") {
				conultarDadoNaMatriz()
				
			} senao se (acao == "D") {
				deletarDadoNaMatriz()
			} senao se (acao == "I") {
				inserirUmDadoNaMatriz()
			} senao se (acao == "L") {
				listarMatriz()
			}
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */