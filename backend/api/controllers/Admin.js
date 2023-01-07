const mongoose = require('mongoose');
const Admin = require('../models/Admin');
exports.admin_login = async(req, res, next) => {
    try {
        const admin = await Admin.find({ userName: req.body.userName }).exec()
        if (admin.length < 1) {
            return res.status(401).json({
                message: "No such user exist"
            })
        }else{
            if (admin[0].password === req.body.password ){
                return res.status(201).json({
                    result: admin[0],
                    message: "login succesfull"
                })
            }
            else{
                return res.status(404).json({
                    message: "login unsuccesfull.Please try again"
                }) 
            }
        }
        
    } catch (err) {
        return res.status(404).json({
            message: "login unsuccesfull"
        })
    }

}