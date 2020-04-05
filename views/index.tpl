{% extends './layout.tpl' %}

{% block css %}
  <title>梅赛德斯-奔驰</title>
  <link rel="stylesheet" href="/stylesheets/index.css">
  <link rel="stylesheet" href="/stylesheets/swiper.min.css">
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
    <div class="page-banner">
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide"><img class="bannerPC" src="/images/bannerPC.jpg"></div>
          <div class="swiper-slide"><img class="bannerPC" src="/images/bannerPC2.jpg"></div>
          <div class="swiper-slide"><img class="bannerPC" src="/images/bannerPC3.jpg"></div>
          <div class="swiper-slide"><img class="bannerPC" src="/images/bannerPC4.jpg"></div>
          <div class="swiper-slide"><img class="bannerPC" src="/images/bannerPC5.jpg"></div>
          <div class="swiper-slide"><img class="bannerPC" src="/images/bannerPC6.jpg"></div>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
      </div>
    </div>
  </div>
  <div class="page-mainer">
    <div class="section-models">
      <div class="container">
        <div class="title">全部车型</div>
        <div class="models-content">
          <div class="content-item"><span>轿车</span></div>
          <div class="content-item"><span>SUV</span></div>
          <div class="content-item"><span>轿跑车 & 敞篷跑车</span></div>
          <div class="content-item"><span>MPV</span></div>
        </div>
      </div>
    </div>
    <div class="section-tool">
      <div class="container">
        <div class="title">购车工具</div>
        <div class="tool-content"></div>
      </div>
    </div>
    <div class="section-more">
      <div class="container">
        <div class="title">发现更多</div>
        <div class="more-item">
          <div class="new-plan">
            <div class="more-item-box">
              <div class="more-item-title">限时购车新方案</div>
              <div class="more-item-description">吐故，纳新。多种优享方案，助你轻松拥有一辆梅赛德斯-奔驰。多种优享方案，助你轻松拥有一辆梅赛德斯-奔驰。</div>
              <div class="more-item-more_about">> 了解更多</div>
            </div>
          </div>
        </div>
        <div class="more-item">
          <div class="she_xyh">
            <div class="she">
              <div class="more-item-box">
                <div class="more-item-title">加入She's Mercedes</div>
                <div class="more-item-description">发出你的声音，唤醒女性力量。</div>
                <div class="more-item-more_about">> 了解更多</div>
              </div>
            </div>
            <div class="xyh">
              <div class="more-item-box">
                <div class="more-item-title">星友荟</div>
                <div class="more-item-description">尽情表达自我、分享观点、结识新友的星徽社群。</div>
                <div class="more-item-more_about">> 了解更多</div>
              </div>
            </div>
          </div>
        </div>
        <div class="more-item">
          <div class="car-club">
            <div class="more-item-box">
              <div class="more-item-title">Mercedes me 车主俱乐部</div>
              <div class="more-item-description">携手跨行业合作伙伴为会员打造优质的用车体验和多方位的生活关怀。</div>
              <div class="more-item-more_about">> 了解更多</div>
            </div>
          </div>
        </div>
        <div class="more-item">
          <div class="championship_SUV">
            <div class="championship">
              <div class="more-item-box">
                <div class="more-item-title">并肩前行，新赛季F1世界锦标赛</div>
                <div class="more-item-description">梅赛德斯-AMG马石油车队，2019赛季征战传奇！</div>
                <div class="more-item-more_about">> 了解更多</div>
              </div>
            </div>
            <div class="SUV">
              <div class="more-item-box">
                <div class="more-item-title">SUV征服之旅</div>
                <div class="more-item-description">邀您即刻了解2019梅赛德斯-奔驰SUV征服之旅试驾活动，与SUV家族一同踏上这场征程！</div>
                <div class="more-item-more_about">> 了解更多</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section-subscribe">
      <div class="container">
        <div class="subscribe-content">
          <div class="subscribe-title">预约试驾</div>
          <div class="subscribe-tips">亲身体验梅赛德斯-奔驰吧。</div>
          <a class="subscribe-btn" href="/landing">> 开始</a>
        </div>
      </div>
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
<a href="/landing" class="suspension-box">
  <img class="suspension-img" src="/images/suspension-img.png">
  <div class="text-effect">
    <div class="effect-text" data-text="预约试驾" contenteditable>预约试驾</div>
    <div class="gradient"></div>
    <div class="spotlight"></div>
  </div>
</a>
{% endblock %}

{% block js %}
  <script src="/public/javascripts/index.js"></script>
  <script src="/javascripts/swiper.min.js"></script>
  <script src="/javascripts/swiper.js"></script>
{% endblock %}