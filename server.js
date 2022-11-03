const http = require('http');
const express = require('express');
const app = express();
const {PORT = 8080} = process.env;

console.log('PORT',PORT);

app.get('/',(req,res)=> res.send(`Hello World From Node Server With EKS-Ci/Cd`));


app.listen(PORT,()=>{
  console.log(`Example app listening at http://localhost:${PORT}`);
})

// const server = http.createServer((req, res) => {
//   res.statusCode = 200;
//   res.setHeader('Content-Type', 'text/plain');
//   res.end('Hello World');
// });
//

// server.listen(port, () => {
//   console.log(`Server running on port :${port}`);
// });
//
//
//
