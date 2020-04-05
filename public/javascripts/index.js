const PAGE = {
  init: function(){
    this.bind();
  },
  bind: function(){
    $('.form-btn').on('click',this.handleSubmit);
  },
  handleSubmit: function(){
    let name = $('#driveName').val();
    let phone = $('#driveCall').val();
    let utm = PAGE.getQuery('utm');
    if(!name || !phone){
      alert('请输入必要参数！');
      return
    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
      alert('手机号码有误，请重新输入！')
      return
    }
    $.ajax({
      url: '/api/admin/clue',
      data:{name,phone,utm},
      type:'POST',
      beforeSend: function(){
        $('.form-btn').attr('disabled',true);
      },
      success: function(data){
        if(data.code == 200){
          alert('申请成功！');
          location.href = '/admin/clue';
        }else{
          alert('data.message');
        }
      },
      error: function(err){
        console.log(err)
      },
      complete: function(){
        $('.form-btn').attr('disabled',false);
      }
    })
  },
  
  getQuery: function(name){
    var result = location.search.match(new RegExp("[\?\&]" + name+ "=([^\&]+)","i"));
    if(result == null || result.length < 1){
        return "";
    }
    return result[1];
  },
}
PAGE.init();