const { sign } = require('jsonwebtoken');
const userModel = require('../model/user_model');
/////
const jwt = require('jsonwebtoken');
////

class userService{
    static async RegisterUser(x){
        try{
            const CreateUser = new userModel(x);
            return await CreateUser.save();
        }catch(err){
            throw err;
        }
    }
    
    static async CheckUser(pnumber){
        try{
            return await userModel.findOne({pnumber});
        }catch(error){
            throw error;
        }
    }
    /////
    static async generateToken(tokenData,secretKey,jwt_expire){
        return jwt.sign(tokenData,secretKey,{expiresIn:jwt_expire});
    }
    ////
}
module.exports = userService;