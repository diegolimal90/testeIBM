//importando dependencias
var express = require('express');
var conf = require('./lib');
var mysql = require('mysql');

//variavel para manupulação do express
var app = express();
var con = mysql.createConnection(conf.config);

//rota para auxilio ao usuário da plataforma
app.get('/', function (req, res) {
    //abre arquivo caso o usuario da plataforma nao saiba as urls para acesso as endpoints
    res.sendfile('public/aviso.html');
});

//rota de busca ao usuário do banco de dados
app.get('/user/by-name/:namepart', function(req, res){
    table = "user";
    //passando o valor do paramentro get para a variavel namepart
    var namepart = req.params.namepart;
    //efetua a consulta no banco de dados
    con.query("SELECT * FROM user WHERE nome LIKE '%"+ namepart +"%'", function(error, rows, fields){
        //verifica se ocorreu um erro no consulta
        if(error){
            console.log("ERRO AO EXECUTAR A QUERY " + error);
        }else{
            console.log("SUCESSO");
            res.send(rows);
        }
    })
});

//rota de busca ao titulo do livro no banco de dados
app.get('/book/by-title/:title-part', function(req, res){
    //passando o valor do paramentro get para a variavel namepart
    var namepart = req.params.namepart;
    //gera a consulta no banco de dados
    con.query("SELECT * FROM book WHERE titulo LIKE '%"+ namepart +"%'", function(error, rows, fields){
        //verifica se ocorreu um erro no consulta
        if(error){
            console.log("ERRO AO EXECUTAR A QUERY " + error);
        }else{
            console.log("SUCESSO\n");
            res.send(rows);
        }
    });
});

//rota de busca ao titulo do livro no banco de dados
app.get('/book/by-author/:author-part', function(req, res){
    //passando o valor do paramentro get para a variavel namepart
    var namepart = req.params.namepart;
    //gera a consulta no banco de dados
    con.query("SELECT * FROM autor WHERE nome LIKE '%"+ namepart +"%'", function(error, rows, fields){
        //verifica se ocorreu um erro no consulta
        if(error){
            console.log("ERRO AO EXECUTAR A QUERY " + error);
        }else{
            console.log("SUCESSO\n");
            res.send(rows);
        }
    });
});

app.listen(process.env.PORT || 3000, function(){
	console.log("Servidor Express funcionando na porta %d no modo %s", this.address().port, app.settings.env);
});

conect: con.connect(function(error){
    if(!!error){
        console.log(error);
    }else{
        console.log('Conectado');
    }
});