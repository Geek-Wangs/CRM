const PAGE = {
  init: function(){
    this.bind();
  },
  bind: function(){
    console.log($('.confirm-btn'))
    $('.confirm-btn').on('click',this.submit);
  },
  submit:function(){
    let phone = $('#phone').val().trim();
    let password = $('#password').val().trim();
    if(!phone || !password){
      alert('请输入有效用户信息！');
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
      type: 'POST',
      url: `/api/login`,
      data: {phone,password},
      beforSend: () => {
        $('.confirm-btn').attr({disabled: 'disabled'});
      },
      success: res => {
        if(res.code === 200) {
          alert('登录成功！');
          location.href = '/admin/user';
        }else{
          console.log("登录失败")
        }
      },
      error: function(err){
        console.log(err);
      },
      complete: () => {
        $('.confirm-btn').removeAttr('disabled');
      }
    })
  }
}
PAGE.init();