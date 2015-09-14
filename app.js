var http = require('http');
var app = http.createServer(function(req, res) {
    res.end('docker test website');
});
app.listen(8080);
