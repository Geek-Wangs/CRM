const User = require('../models/user');
const authCodeFunc = require('../utils/authCode');

const userController = {
  show: async function(req, res, next) {
    try{
      res.render('login.tpl')
    }catch(e){
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },
  login: async function(req,res,next){
    let phone = req.body.phone;
    let password = req.body.password;
    try{
      const users = await User.select({phone,password});
      const user = users[0];
      if(user){
        let auth_code = phone + '\t' + password + '\t' + user.id + '\t' + user.role;
        auth_code = authCodeFunc(auth_code, 'ENCODE');
        res.cookie('ac', auth_code, {maxAge: 24 * 60 * 60 * 1000, httpOnly: true});
        res.cookie('user_name', user.name, {maxAge: 24 * 60 * 60 * 1000, httpOnly: true});
        res.json({ code: 200, message: '登录成功'});
      }else{
        res.json({ code: 0, data: { msg: '登录失败,没有此用户' }});
      }
    }catch(e){
      res.json({code: 0, message: '系统问题请管理员处理'});
    }
  },
  logout: function(req, res) {
    res.clearCookie('ac');
    res.redirect('/admin/login');
  },
  renderLogin: async function(req, res) {
    if(res.locals.isLogin) {
      res.redirect('/admin/clue');
      return;
    }
    res.render('login', {title: '用户登录'});
  }
}

module.exports = userController;