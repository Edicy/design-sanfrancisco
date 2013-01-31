{% if editmode or site.has_many_languages? %}
  <ul class="menu right langmenu">
    {% for language in site.languages %}
      <li{% if language.selected? %} class="active"{% endif %}>
        <a href="{{ language.url }}"{% if language.selected? %} class="active"{% endif %}>{{ language.title }}</a>
      </li>
    {% endfor %}
    {% if editmode %}
      <li>{%languageadd%}</li>
    {% endif %}
  </ul>
{% endif %} 