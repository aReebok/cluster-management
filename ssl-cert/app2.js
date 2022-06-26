const https = require('https');
const fs =require('fs');

const port = 9000;

const options = {
    key: fs.readFileSync('key.pem'),
    cert: fs.readFileSync('cert.pem')
}

const server = https.createServer(options, function(req, res) {
    res.write('Hello Node.js server on https ONLY!')
    res.end()
})

server.listen(port, function(error) {
    if (error) {
        console.log
        ('Something went wrong', error)
    } else {
        console.log('Server is listening on port ' + port)
    }
})