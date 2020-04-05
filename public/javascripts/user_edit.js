const PAGE = {
  init: function(){
    this.bind();
  },
  bind: function(){
    $('#userSubmit').on('click',this.sumbit);
  },
  sumbit: function(){
    let id = $('#userId').val();
    let name = $('#userName').val().trim();
    let phone = $('#userPhone').val().trim();
    let password = $('#userPassword').val().trim();
    let role = $('#userRole').val();
    role = Number(role);
    console.log(name,phone,password,role)
    if(!name || !phone || !password || !role){
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
      type: 'PUT',
      url: `/api/admin/users/${id}`,
      data: {name,phone,password,role},
      beforSend: () => {
        $('#userSumbit').attr({disabled: 'disabled'});
      },
      success:(res) => {
        if(res.code === 200) {
          alert('编辑成功！');
          location.href = '/admin/user';
        }else{
          console.log(res.data)
        }
      },
      error: function(err){
        console.log(err);
      },
      complete: () => {
        $('#userSubmit').removeAttr('disabled');
      }
    })
  }
}
PAGE.init();