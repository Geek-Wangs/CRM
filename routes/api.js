var express = require('express');
var router = express.Router();
var UserController = require('../controllers/ctrl_user');
var ClueController = require('../controllers/ctrl_clue');
var loginController = require('../controllers/ctrl_login');
var csrf = require('../middlewares/csrf');

router.post('/admin/users',csrf.getToken,UserController.insert);
router.put('/admin/users/:id',csrf.getToken,UserController.update);
router.delete('/admin/users',csrf.getToken,UserController.delete);

router.post('/login',csrf.getToken,loginController.login);

router.post('/admin/clue',csrf.getToken,ClueController.insert);
router.put('/admin/clue/:id',csrf.getToken,ClueController.update);
router.post('/admin/clue/:id/log',csrf.getToken,ClueController.addLog);


module.exports = router;
