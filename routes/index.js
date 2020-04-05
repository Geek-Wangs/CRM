var express = require('express');
var router = express.Router();
var userController = require('../controllers/ctrl_user');
var clueController = require('../controllers/ctrl_clue');
var loginController = require('../controllers/ctrl_login');
var csrf = require('../middlewares/csrf');
var authMiddleware = require('./../middlewares/auth')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});

router.get('/landing',function(req, res, next) {
  res.render('landing');
});

router.get('/login',csrf.getToken,loginController.show);
router.post('/login',csrf.getToken,loginController.login);

router.get('/admin/clue_log/:id',csrf.getToken,clueController.log);

router.get('/admin/clue/:id',csrf.getToken,clueController.edit);
router.get('/admin/clue',csrf.getToken,clueController.show);

router.get('/admin/user_create',authMiddleware.mustLogin, authMiddleware.mustRoot,userController.create);

router.get('/admin/user_edit/:id',authMiddleware.mustLogin, authMiddleware.mustRoot,userController.edit);

router.get('/admin/user',authMiddleware.mustLogin, authMiddleware.mustRoot,userController.show);


module.exports = router;
