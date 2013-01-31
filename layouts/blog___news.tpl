<!DOCTYPE html>
<html lang="en">
<head>
    {% include "SiteHeader" %}
	{{blog.rss_link}}
</head>
<body>
<div id="wrap">
	{% include "Header" %}
	<div class="content wrapper cf text-body">
		<div class="centered-header cf{% if editmode %} centered-header-wide{% endif %}">
            <h1>
    			<a href="{{ articles.first.url }}">{{articles.first.title}}</a>
    			{% if articles.first.comments_count > 0 %}<a href="{{articles.first.url}}#comments" class="comments-link">({{articles.first.comments_count}})</a>{% endif %}
    			<span class="date">{{articles.first.created_at | format_date="long" }}</span>
    		</h1>
        </div>
		{{articles.first.excerpt}}<br />
		{{articles.first.body}}{% if articles.size > 1 %}
		<div>{% addbutton class="add-article" %}</div>
		<ul class="articles">{% for a in articles offset:1 %}
			<li><a href="{{a.url}}">{{a.title}}</a> {% if a.comments_count > 1 %}<a href="{{a.url}}#comments" class="comments-link">({{a.comments_count}})</a>{% endif %} <span class="date">{{a.created_at | format_date="long" }}</span></li>{% endfor %}
		</ul>{% endif %}
	</div>
	{% include "Footer" %}
</div>
{% include "JS" %}
</body>
</html>