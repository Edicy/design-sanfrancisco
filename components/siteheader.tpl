<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="{{ page.keywords }}" />
<meta name="description" content="{{ page.description }}" />
<meta name="copyright" content="{{ site.copyright }}" />
<meta name="author" content="{{ site.author }}" />
{% if site.search.enabled %}{% stylesheet_link "assets/site_search/3.0/style.css?1" static_host="true" %}{% endif %}
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700,700italic,300italic&subset=latin,cyrillic,latin-ext' rel='stylesheet' type='text/css'>
{% stylesheet_link "style.css?1" %}
<!--[if lt IE 8]>{% stylesheet_link "style_ie.css?2" %}<![endif]-->
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<!--[if IE]><style>.clearfix { zoom:1; }</style><![endif]-->
<title>{% if article %}{{ article.title }} — {{page.site_title}}{% else %}{% unless site.root_item.selected? %}{{ page.title }} - {% endunless %}{{page.site_title}}{% endif %}</title>
<script src="{{ javascripts_path }}/modernizr.js"></script>