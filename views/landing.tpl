{% extends './layout.tpl' %}

{% block css %}
<title>预约试驾</title>
<link rel="stylesheet" href="/stylesheets/landing.css">
{% endblock %}

{% block content %}
<div class="page">
  <div class="page-header">
    <div class="page-nav">
      <div class="container">
        <div class="logo-desktop">
          <a href="/"><img src="/images/logo-desktop.png"></a>
        </div>
        <div class="login">
          <a class="btn-login" href="/login">登录</a>
          <a class="btn-login" href="/login">注册</a>
        </div>
      </div>
    </div>
  </div>
  <div class="page-mainer">
    <div class="section-subscribe">
      <div class="container">
        <div class="title">预约试驾</div>
      </div>
      <div class="subscribe-content">
          <div class="container">
            <form class="subscribe-form">
              <fieldset class="form-fieldset">
                <legend class="form-fieldset-legend">欢迎在线预约试驾。只需填写姓名及手机号，我们会第一时间与您联系，安排试驾事宜。</legend>
                <label for="driveName" class="form-input">
                  <input type="text" maxlength="20" id="driveName" class="input" placeholder="请填写姓名">
                  <span class="inline-error">· 请输入正确的姓名（汉字或字母）</span>
                </label>
                <div class="form-radio">
                  <label for="driveMale" class="radio">
                    <input type="radio" class="radio-input" value="Male" id="driveMale" name="sex" checked>
                    <span class="radio-fake"></span>先生
                  </label>
                  <label for="drivefemale" class="radio">
                    <input type="radio" class="radio-input" value="Female" id="driveFemale" name="sex">
                    <span class="radio-fake"></span>女士
                  </label>
                </div>
                <label for="driveCell" class="form-input">
                  <input type="text" maxlength="11" id="driveCall" class="input" placeholder="请填写您的手机号">
                  <span class="inline-error">· 请输入中国大陆手机号码（11位数字）</span>
                </label>
                <label for="driveCaptcha" class="form-captcha">
                  <input type="text" maxlength="4" id="driveCaptcha" class="input" placeholder="请输入图片验证码">
                  <input type="hidden" name="token" class="captcha-token" id="driveCaptchaToken" value="">
                  <img class="captcha-image" src="">
                  <div class="captcha-refresh">
                    <img src="/images/captcha-refresh.png" width="100%">
                  </div>
                  <span class="inline-error">· 请输入正确的验证码</span>
                </label>
                <label for="driveCheck" class="form-checkbox">
                  <input type="checkbox" id="driveCheck" class="input-checkbox">
                  <span class="checkbox-fake"></span>
                  <span class="checkbox-text">我仔细阅读了并接受所附的 <span class="checkbox-text-privacy">隐私条款</span></span>
                  <span class="inline-error">· 请阅读并接受隐私条款</span>
                </label>
              </fieldset>
              <div class="form-btn">申请试驾</div>
              <input type="text" name="csrf" id="csrf" value="{{csrf}}" hidden>
            </form>
          </div>
      </div>
    </div>
    <div class="section-qrcode">
      <img src="/images/qrcode.jpg" width="100%">
    </div>
    <div class="section-share">
      <div class="container">
        <div class="share-content">
          <div class="share-text">分享到</div>
          <span class="wechat"></span>
          <span class="sina"></span>
          <span class="zhihu"></span>
        </div>
      </div>
    </div>
    <div class="section-summary"></div>
  </div>
  <div class="page-footer">
    <div class="container">
      <a href="javascript:;">©梅赛德斯-奔驰版权所有</a><br>
      <a href="javascript:;">网站地图</a>
      <a href="javascript:;">隐私政策</a>
      <a href="javascript:;">用户协议</a>
      <a href="javascript:;">京ICP备09046804号-2</a>
      <a href="javascript:;">法律声明</a>
      <a href="javascript:;">京公网安备 11010502035702号</a>
      <a href="javascript:;">投诉电话</a>
    </div>
  </div>
</div>
{% endblock %}

{% block js %}
<script src="/javascripts/index.js"></script>
{% endblock %}