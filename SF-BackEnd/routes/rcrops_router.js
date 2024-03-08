// routes/rcrops_router.js
const router = require('express').Router();
const cropController = require('../controller/rcrops_controller');

router.get('/getCrops', cropController.getAllCrops);

module.exports = router;
