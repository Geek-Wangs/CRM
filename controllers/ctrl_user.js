const User = require('../models/user');
const { formatTime } = require('../utils/date');

const userController = {
  show: async function(req,res,next){
    if(!res.locals.isLogin){
      res.redirect('/login')
      return
    }

    try{
      const users = await User.all().map(data => {
        if(data.created_time){
          data.created_time = formatTime(data.created_time)
        }
        return data
      });
      res.locals.users = users;
      res.render('admin/user',res.locals);
    }catch(e){
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },
  insert: async function(req,res,next){
    let name = req.body.name;
    let phone = req.body.phone;
    let password = req.body.password;
    let role = req.body.role;
    let created_time = new Date();
    if(!name || !phone || !password || !role){
      res.json({ code: 0, data: 'params empty!'})
      return
    }
    try{
      const user = await User.insert({name,phone,password,role,created_time});
      res.json({code: 200, data: user})
    }catch(e){
      res.json({code: 0, data: e})
    }
  },
  update: async function(req,res,next){
    let name = req.body.name;
    let phone = req.body.phone;
    let password = req.body.password;
    let role = req.body.role;
    let id = req.params.id;
    console.log(name,phone,password,role);
    if(!name || !phone || !password || !role || !id){
      res.json({code: 0, data: 'params empty!'});
      return
    }

    try{
      const user = await User.update(id,{name,phone,password,role});
      res.json({ code: 200, data: user})
    }catch(e){
      console.log(e);
      res.json({ code: 0, data: e})
    }
  },
  delete: async function(req,res,next){
    let id = req.body.id;
    if(!id){
      res.json({ code: 0, data: 'params empty!' });
      return
    }
    try{
      const user = await User.delete(id);
      res.json({ code: 200, data: user})
    }catch(e){
      res.json({ code: 0, data: e })
    }
  },
  edit: async function(req,res,next){
    let id = req.params.id;
    try{
      const users = await User.select({id})
      let user = users[0];
      res.locals.user = user;
      res.render('admin/user_edit',res.locals)
    }catch(e){
      res.locals.error = e;
      res.render('error',res.locals);
    }
  },
  create: async function(req,res,next){
    try{
      res.render('admin/user_create',res.locals);
    }catch(e){
      res.locals.error = e;
      res.render('error',res.locals);
    }
  }
}

module.exports = userController;