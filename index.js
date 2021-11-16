const express = require('express')

const app = express()

app.use('/', (req, res) => res.status(200).send('Hello world'))

app.listen(5000, () => {
	console.log(`[${process.env.NODE_ENV}] Server is running on port 5000`);
});
