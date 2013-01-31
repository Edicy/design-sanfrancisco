<!DOCTYPE html>
<html lang="en">
<head>
    {% include "SiteHeader" %}
</head>
<body>
<div id="wrap">
	{% include "Header" %}
	<div class="content wrapper cf">
		<div class="front-body">
			{% content %}
		</div>
	</div>
	{% include "Footer" %}
</div>
{% include "JS" %}
</body>
</html>