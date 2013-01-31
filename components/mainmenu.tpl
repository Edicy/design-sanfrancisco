<ul class="menu right mainmenu cf">
    <li{% if site.root_item.selected? %} class="active"{% endif %}><a href="{{site.root_item.url}}">{{site.root_item.title}}</a></li>{% for i in site.visible_menuitems %}
	<li{% if i.selected? %} class="active"{% endif %}{% unless i.translated? %} class="untranslated"{% endunless %}><a href="{{i.url}}"{% unless i.translated? %} class="fci-editor-menuadd"{% endunless %}>{{i.title}}</a></li>{% endfor %}{% if editmode %}
	{% if site.hidden_menuitems.size > 0 %}<li>{% menubtn site.hidden_menuitems %}</li>{% endif %}
	<li>{% menuadd %}</li>{% endif %}
</ul>