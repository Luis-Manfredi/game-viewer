const express = require('express');
const app = express();
const cors = require('cors');
const path = require('path');

app.use(cors({
    origin: "*",
    methods: ['GET'],
    
}));
app.use(require('./routes/games'));

//Static Files
app.use(express.static(path.join(__dirname, 'public')));

module.exports = app;