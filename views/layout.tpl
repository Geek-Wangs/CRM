<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  {% block css %}
  {% endblock %}
</head>
<body>
  {% block content %}
  {% endblock %}

  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  {% block js %}
  {% endblock %}
</body>
</html>