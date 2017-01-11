var express = require('express')
var fs = require('fs');
var key = fs.readFileSync('./dnavid.key');
var cert = fs.readFileSync('./dnavid.crt')
var https = require('https');
var http = require('http');
var https_options = {
    key: key,
    cert: cert
};
var PORT = 443;
var HOST = '0.0.0.0';
app = express();
app.get('/', function (req, res) {
  res.sendFile('/home/davidweisss/auth0-react-sample/01-Login/dist/index.html')
})
app.use(express.static('/home/davidweisss/auth0-react-sample/01-Login/dist'));
// handle every other route with index.html, which will contain
// // a script tag to your application's JavaScript file(s).
app.get('*', function (req, res){
  res.sendFile('/home/davidweisss/auth0-react-sample/01-Login/dist/index.html')
  })
    
server = https.createServer(https_options, app).listen(PORT, HOST);
console.log('HTTPS Server listening on %s:%s', HOST, PORT);
// Redirect from http port 80 to https
var http = require('http');
http.createServer(function (req, res) {
    res.writeHead(301, { "Location": "https://" + req.headers['host'] + req.url });
    res.end();
}).listen(80);
