<div class="footer wrapper cf">
	<div class="left">
		{% xcontent name="footer" %}
		<div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
	</div>
	<div class="right">
		{% include "Search" %}
	</div>
</div>