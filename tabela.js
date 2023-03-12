function inserirPessoa(id, nome) {
    tabBody=document.getElementById("tabela_pessoas");
    row=document.createElement("tr");

    var colunaId = criarColunaTexto(id);
    row.appendChild(colunaId);

    var colunaNome = criarColunaTexto(nome);
    row.appendChild(colunaNome);

    var botaoExcluir = criarBotaoHTML("Excluir", `excluirPessoa(${id})`);
    row.appendChild(botaoExcluir);

    var botaoEditar = criarBotaoHTML("Editar", `editarPessoa(${id})`);
    row.appendChild(botaoEditar);

    tabBody.appendChild(row);
}

function criarColunaTexto(valor) {
    var cell = document.createElement("td");
    var node=document.createTextNode(valor);
    cell.appendChild(node);
    return cell;
}

function criarBotaoHTML(nome, onClick) {
    var cell = document.createElement("td");
    var botao = document.createElement("button");
    botao.setAttribute("onClick", onClick);
    var node=document.createTextNode(nome);
    botao.appendChild(node);
    cell.appendChild(botao);
    return cell;
}