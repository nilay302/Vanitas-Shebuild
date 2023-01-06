const express = require('express');
const morgan = require('morgan');
const bodyParser = require('body-parser');
const mongoose = require('mongoose');

const userRoutes = require('./api/routes/Users');
const adminRoutes = require('./api/routes/Admin');

const connectDB = require('./db');
require("dotenv").config();

connectDB();
mongoose.Promise = global.Promise;

const app = express();

app.use(morgan('dev'));
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());

app.use((req,res,next)=>{
    res.header('Access-Control-Allow-Origin','*');
    res.header('Access-Control-Allow-Headers',
    "Origin, X-Requested-With, Content-type, Accept, Authorization");
    if(req.method ==='OPTIONS'){
        res.header('Access-Control-Allow-Methods','PUT, POST, PATCH, DELETE, GET');
        return res.status(200).json({});
    }
    next();
});

app.use('/users',userRoutes);
app.use('/admin',adminRoutes);

module.exports = app;