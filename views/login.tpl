{% extends './layout.tpl' %}

{% block css %}
<title>用户登录</title>
<link rel="stylesheet" href="/stylesheets/login.css">
{% endblock %}

{% block content %}
<div class="page">
  <div class="page-header">
    <div class="container">
      <div class="logo">
        <a href="/"><img src="/images/logo-desktop.png"></a>
      </div>
    </div>
  </div>
  <div class="page-mainer">
    <div class="login-box">
      <div class="login-title">
        <div class="login-method">手机快捷登录
          <div class="triangle"><span></span></div>
        </div>
        <div class="login-method active">用户名密码登录
          <div class="triangle"><span></span></div>
        </div>
      </div>
      <div class="login-input">
        <div class="input-div">
          <input type="text" placeholder="输入注册或绑定的手机号码" class="phone-number">
        </div>
        <div class="input-div">
            <input type="text" placeholder="验证码" class="code" maxlength="6">
            <span class="handle-code">发送验证码</span>
        </div>
      </div>
      <div class="login-input active">
        <div class="input-div">
          <input type="text" placeholder="手机号码/邮箱地址" class="phone-number" id="phone">
        </div>
        <div class="input-div">
            <input type="text" placeholder="登录密码" class="code" maxlength="6" id="password">
            <span class="handle-code">找回密码</span>
        </div>
      </div>
      <div class="login-btn">
        <div class="confirm-btn">确定</div>
        <div class="register-btn">注册</div>
      </div>
      <input type="text" name="csrf" id="csrf" value="{{csrf}}" hidden>
    </div>
  </div>
  <div class="page-footer">
    <div class="container">
      <div class="footer-left">
          <a class="left-item" href="javascript:;">@2017北京梅赛德斯-奔驰销售服务有限公司版权所有</a>
      </div>
      <div class="footer-right">
        <a class="right-item" href="javascript:;">网站地图</a>
        <a class="right-item" href="javascript:;">隐私条款</a>
        <a class="right-item" href="javascript:;">京ICP备09046804号-2</a>
        <a class="right-item" href="javascript:;">法律声明</a>
      </div>
    </div>
  </div>
</div>
{% endblock %}

{% block js %}
<script src="/javascripts/login.js"></script>
{% endblock %}