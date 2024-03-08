// model/rcrops_model.js
const mongoose = require('mongoose');

const db = require('../config/db');

const { Schema } = mongoose;

const cropSchema = new Schema({
    Nvalue: {
        type: String,
        required: true,
    },
    Pvalue: {
        type: String,
        required: true,
    },
    kvalue: {
        type: String,
        required: true,
    },
    phvalue: {
        type: String,
        required: true,
    },
});

const cropModel = db.model('crop', cropSchema);

module.exports = cropModel;
