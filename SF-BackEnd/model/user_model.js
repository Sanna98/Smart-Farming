const mongoose = require('mongoose');
const bcrypt = require('bcrypt');

const db = require('../config/db');

const { Schema } = mongoose;

const userSchema = new Schema({
    fname: {
        type: String,
        required: true,
    },
    pnumber: {
        type: String,
        required: true,
        unique: true,
    },
    pword: {
        type: String,
        required: true,
    },
});

userSchema.pre('save', async function () {
    try {
        var user = this;
        const salt = await bcrypt.genSalt(10);
        const hashpass = await bcrypt.hash(user.pword, salt);
        user.pword = hashpass;

    } catch (error) {
        throw error;
    }
});

userSchema.methods.comparepword = async function (candidatePassword) {
    try {
        return await bcrypt.compare(candidatePassword, this.pword);
    } catch (error) {
        throw error;
    }
};

const userModel = db.model('users', userSchema);

module.exports = userModel;
