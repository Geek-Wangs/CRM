<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>{{title}}</title>
  <link rel="stylesheet" href="/stylesheets/admin.css"/>
  {% block css %}
  {% endblock %}
</head>
<body>
  <div class="page">
    <header class="page-header">
      <div class="header-logo">
        <a href="/"><img src="/images/logo-desktop.png"></a>
      </div>
      <div class="user-info">
        <span>{{userInfo.name}}</span>
        <a class="logout" id="logout" href="/login">退出</a>
      </div>
    </header>
    <div class="page-mainer">
      <div class="page-aside">
        <nav class="page-nav">
          <ul>
            {% if userInfo.id == 1 %}
            <li>
              <a class="page-nav-item {% if nav == 'user' %}active{% endif %}" href="/admin/user">人员管理</a>
            </li>
            {% endif %}
            <li>
              <a class="page-nav-item {% if nav == 'clue' %}active{% endif %}" href="/admin/clue">线索管理</a>
            </li>
          </ul>
        </nav>
      </div>
      <div class="page-content">
        {% block content %}
        {% endblock %}
      </div>
    </div>
    <footer class="page-footer">
      <div class="footer-container">
        <a href="javascript:;">©梅赛德斯-奔驰版权所有</a><br>
        <a href="javascript:;">网站地图</a>
        <a href="javascript:;">隐私政策</a>
        <a href="javascript:;">用户协议</a>
        <a href="javascript:;">京ICP备09046804号-2</a>
        <a href="javascript:;">法律声明</a>
        <a href="javascript:;">京公网安备 11010502035702号</a>
        <a href="javascript:;">投诉电话</a>
      </div>
    </footer>
  </div>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript">
    $('#logout').on('click', function() {
      $.ajax({url: '/api/logout'});
    });
  </script>
  {% block js %}
  {% endblock %}
</body>
</html>