const restify = require("restify");
const mysql = require("mysql2");

const server = restify.createServer({
    name: "crud-pessoas-server",
    version: "1.0.0"
})

var con = mysql.createConnection({
    host     : 'localhost',
    port     : 3306,
    user     : 'root',
    password : '1234',
    database : 'pessoas'
  });

server.use(restify.plugins.bodyParser({ mapParams: true }));

server.listen(8081, function() {
    console.log("Escutando porta 8081");
});

con.connect(function(err) {
    if(err) throw err;
    console.log("Connected!");
});

server.get("/pessoas", function(req, res, next) {
    console.log(req);

    var sql = 'SELECT * FROM pessoas.pessoa';

    console.log("Consultando pessoa no banco de dados");
    con.query(sql, function(err, result){
        res.send(200, result);
    });
});

server.get("/pessoas/:id", function(req, res, next) {
    var idPessoa = req.params.id;

    console.log(req);

    var sql = `SELECT * FROM pessoas.pessoa where id = ${idPessoa}`;

    console.log("Consultando pessoa de id " + idPessoa);
    con.query(sql, function(err, result){
        res.send(200, result);
    });
});

server.put("/pessoas/:id", function(req, res, next) {
    var idPessoa = req.params.id;
    var pessoa = req.body;
    var sql = `UPDATE pessoas.pessoa set nome = '${pessoa.nome}' where id = ${idPessoa}`;

    console.log(req);
    console.log("Alterando pessoa de id " + idPessoa);

    con.query(sql, function(err, result) {
        res.send(200, "Pessoa alterada com sucesso");
    });

});

server.post("/pessoas", function(req, res, next) {
    var pessoa = req.body;
    var sql = `INSERT INTO pessoas.pessoa VALUES(${pessoa.id}, '${pessoa.nome}')`;

    console.log(req);
    console.log("Inserindo pessoa de id " + pessoa.id);

    con.query(sql, function(err, result) {
        res.send(200, "Pessoa inserida com sucesso");
    });
});

server.del("/pessoas/:id", function(req, res, next) {
    var idPessoa = req.params.id;

    var sql = `DELETE FROM pessoas.pessoa where id = ${idPessoa}`;

    console.log(req);
    console.log("Deletando pessoa de id " + idPessoa);

    con.query(sql, function(err, result) {
        res.send(200, "Pessoa " + idPessoa + "deletada com sucesso");
    });
});

console.log("Iniciando servidor.");