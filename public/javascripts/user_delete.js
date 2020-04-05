const PAGE = {
  init: function(){
    this.bind();
  },
  bind: function(){
    $('.delete-btn').on('click',this.delete);
  },
  delete: function(){
    let id = $(this).data('id');
    console.log(this,id,123)
    $.ajax({
      url: '/api/admin/users',
      data: {id},
      type: 'DELETE',
      success: function(data){
        if(data.code === 200){
          alert('删除成功');
          location.reload();
        }else{
          console.log(data)
        }
      },
      error: function(err){
        console.log(err)
      }
    })
  }
}
PAGE.init();