const restify = require("restify");

const server = restify.createServer({
    name: "crud-pessoas-server",
    version: "1.0.0"
})

server.use(restify.plugins.bodyParser({ mapParams: true }));

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

server.put("/pessoas", function(req, res, next) {
    var pessoa = req.body;

    console.log(req);
    console.log("Alterando pessoa de id " + pessoa.id);
    res.send(pessoa);
});

server.post("/pessoas", function(req, res, next) {
    var pessoa = req.body;

    console.log(req);
    console.log("Inserindo pessoa:");
    console.dir(pessoa);
    res.send(pessoa);
});

server.del("/pessoas/:id", function(req, res, next) {
    var idPessoa = req.params.id;

    console.log(req);
    console.log("Deletando pessoa de id " + idPessoa);
    res.send("");
});

console.log("Iniciando servidor.");