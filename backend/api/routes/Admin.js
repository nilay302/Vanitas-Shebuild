const express = require('express');
const router = express.Router();
const AdminControls = require('../controllers/Admin')

router.post('/login',AdminControls.admin_login);

module.exports = router;