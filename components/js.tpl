<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
{% sitejs_include %}
{% if site.search.enabled %}
    <script type="text/javascript" src="{{ site.static_asset_host }}/assets/site_search/3.0/site_search.js"></script>
    <script type="text/javascript">
        var edys_site_search_options = {
            texts: { noresults: "{{ "search_noresults"|lc }}" },
            default_stylesheet_enabled: false
}
</script>
{% endif %}

<script type="text/javascript" src="{{ javascripts_path }}/application.js"></script>
{% unless editmode %}{{site.analytics}}{% endunless %}