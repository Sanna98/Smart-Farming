// services/rcrops_services.js
const cropModel = require('../model/rcrops_model');

class CropService {
    static async getAllCrops() {
        try {
            return await cropModel.find({});
        } catch (error) {
            throw error;
        }
    }
}

module.exports = CropService;
