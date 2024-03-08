// controllers/rcrops_controller.js
const CropService = require('../services/rcrops_services');

exports.getAllCrops = async (req, res, next) => {
    try {
        const crops = await CropService.getAllCrops();
        res.status(200).json({ status: true, crops });
    } catch (error) {
        console.error('Error fetching crops:', error);
        res.status(500).send('Internal Server Error');
    }
};
