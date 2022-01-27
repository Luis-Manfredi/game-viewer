
const { Router } = require('express');
const router = Router();
const UserGames = require('../models/Games');
const data = require('../data');


router.get('/api/games', (req, res) => {
    res.json({data});
});

module.exports = router;