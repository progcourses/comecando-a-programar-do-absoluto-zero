const restify = require("restify");

const server = restify.createServer({
    name: "crud-pessoas-server",
    version: "1.0.0"
})

server.listen(8081, function() {
    console.log("Escutando porta 8081");
});

server.get("/pessoas", function(req, res, next) {
    var pessoa = {
        id: 1,
        nome: "Prog"
    };
    console.log(req);
    console.log("Consultando pessoa no banco de dados");
    res.send(pessoa);
});

server.get("/pessoas/:id", function(req, res, next) {
    var idPessoa = req.params.id;

    var pessoa = {
        id: idPessoa,
        nome: "Pessoa" + idPessoa
    };

    console.log(req);
    console.log("Consultando pessoa de id " + idPessoa);
    res.send(pessoa);
});

console.log("Iniciando servidor.");