const userService = require('../services/user_services');

exports.register = async (req,res,next)=>{
    try{
        const fname = req.body.fname;
        const pnumber = req.body.pnumber;
        const pword = req.body.pword;

        const successRes = await userService.RegisterUser(req.body);

        res.status(200).json({status:true,success:"User Registered Successfully"})
    }catch(error){
        throw error
    }
}

exports.login = async(req,res,next)=>{
    try{
        const {pnumber,pword} = req.body;

        const User = await userService.CheckUser(pnumber);

        if(!User){
            throw new Error('User Dont Exist');
        }
        
        const isMatch =await User.comparepword(pword);
        if(isMatch === false){
            throw new Error('Password Invalid');
        }

        let tokenData = {_id:User._id,pnumber:User.pnumber};

        const token = await userService.generateToken(tokenData,"secretKey","1h")

        res.status(200).json({status:true,token:token})

        
    }catch(error){
        throw error
        next(error);
    }
}