{% extends './admin_layout.tpl' %}

{% block content %}
<div class="content-title"><a href="/admin/user_create">新增人员 >></a></div>
<div class="content-table">
  <table class="table-container">
    <tr>
      <th>姓名</th>
      <th>电话</th>
      <th>角色</th>
      <th>创建时间</th>
      <th>操作</th>
    </tr>
    {% for val in users %}
    <tr>
      <td>{{val.name}}</td>
      <td>{{val.phone}}</td>
      <td>
        {% if val.role == 1 %}
          主管
        {% else %}
          销售
        {% endif %}
      </td>
      <td>{{val.created_time}}</td>
      <td>
        <a href="/admin/user_edit/{{val.id}}">编辑</a>
        <a id="deleteUser" class="delete-btn" data-id="{{val.id}}">删除</a>
      </td>
    </tr>
    {% endfor %}
  </table>
</div>
{% endblock %}

{% block js %}
<script src="/javascripts/user_delete.js"></script>
{% endblock %}

