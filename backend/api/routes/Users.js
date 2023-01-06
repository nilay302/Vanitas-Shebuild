const express = require('express');
const router = express.Router();
const UserControls = require('../controllers/Users')

router.post('/signup',UserControls.create_user);
router.post('/login',UserControls.user_login);

//verify email
router.get('/verify/:userId/:uniqueString',UserControls.verify_user);
router.get('/verified',UserControls.verified_user)
module.exports = router;