<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
    {% include "SiteHeader" %}
</head>
<body>
<div id="wrap">
	{% include "Header" %}
	<div class="content wrapper cf text-body" data-search-indexing-allowed="true">
        <div class="centered-header cf{% if editmode %} centered-header-wide{% endif %}"  data-search-indexing-allowed="false">
            <h1>{% contentblock name="slogan" %}{{ "title_goes_here" | lc }}{% endcontentblock %}</h1>
        </div>
		{% content %}
	</div>
	{% include "Footer" %}
</div>
{% include "JS" %}
</body>
</html>