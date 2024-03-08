const express = require("express");
const body_parser = require('body-parser');
const UserRouter = require('./routes/user_router');
const cors = require('cors');
// const CropRouter = require('./routes/rcrops_router');

const app =express();
app.use(body_parser.json());
app.use(cors());

app.use('/',UserRouter);
// app.use('/crops', CropRouter);
module.exports = app;