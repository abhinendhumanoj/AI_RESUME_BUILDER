const express = require('express');
const { generate } = require('../controllers/aiController');

const router = express.Router();

router.post('/generate', generate);

module.exports = router;
