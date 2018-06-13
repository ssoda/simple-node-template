const app = require('express')();
const bodyParser = require('body-parser');

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse application/json
app.use(bodyParser.json());

app.get('/', (req, res) => {
  return res.send('Hello World!');
});

app.listen(9487, () => {
  console.log('Service is running on port 9487');
});
