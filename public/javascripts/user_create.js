const PAGE = {
  init: function(){
    this.bind();
  },
  bind: function(){
    $('#userSubmit').on('click',this.addUser);
  },
  addUser: function(){
    let name = $('#userName').val().trim();
    let phone = $('#userPhone').val().trim();
    let password = $('#userPassword').val().trim();
    let role = $('#userRole').val();
    role = Number(role);
    if(!name || !phone || !password || !role){
      alert('缺少用户信息！');
      return;
    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
      alert('手机号码有误，请重新输入！')
      return ;
    }
    if(!(/^[^\u4e00-\u9fa5]{0,16}$/.test(password))){
      alert('密码格式错误，请重新输入！')
      return
    }
    $.ajax({
      url: '/api/admin/users',
      data: {name,phone,password,role},
      type: 'POST',
      success: function(data){
        if(data.code === 200){
          alert('添加成功！');
          location.href = '/admin/user';
        }else{
          console.log(data);
        }
      },
      error: function(err){
        console.log(err);
      }
    })
  }
}
PAGE.init();