const { Schema, model } = require('mongoose');

const gameSchema = new Schema({
    title: String,
    genre: String,
    cover: String,
});

module.exports = model('Games', gameSchema);