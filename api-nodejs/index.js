const restify = require("restify");

const server = restify.createServer({
    name: "crud-pessoas-server",
    version: "1.0.0"
})

server.listen(8081, function() {
    console.log("Escutando porta 8081");
});

console.log("Iniciando servidor.");