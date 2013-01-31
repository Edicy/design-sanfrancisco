<!DOCTYPE html>
<html lang="en">
<head>
    {% include "SiteHeader" %}
</head>
<body>
<div id="wrap">
	{% include "Header" %}
	<div class="content wrapper cf text-body">
        <div class="centered-header cf{% if editmode %} centered-header-wide{% endif %}">
            <h1>{% contentblock name="slogan" %}{{ "title_goes_here" | lc }}{% endcontentblock %}</h1>
        </div>
		{% content %}
	</div>
	{% include "Footer" %}
</div>
{% include "JS" %}
</body>
</html>