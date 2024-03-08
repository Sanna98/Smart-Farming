// server.js

const express = require('express');
const { MongoClient } = require('mongodb');
const cors = require('cors');

const app = express();
const PORT = 3000;
const uri = 'mongodb://127.0.0.1:27017/SmartFarming';

app.use(cors());

// app.get('/getCrops', async (req, res) => {
//     try {
//         const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true });
//         await client.connect();
        
//         const database = client.db('SmartFarming');
//         const collection = database.collection('RCrops');

//         const crops = await collection.find({}).toArray();
        
//         res.json(crops);
//     } catch (error) {
//         console.error('Error fetching crops:', error);
//         res.status(500).send('Internal Server Error');
//     }
// });

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
