<{% if site.root_item.selected? %}h1{% else %}div{% endif %} class="logo left cf">
    {% unless editmode %}<a href="{{site.root_item.url}}">{% endunless %}
        {% editable site.header %}
    {% unless editmode %}</a>{% endunless %}   
</{% if site.root_item.selected? %}h1{% else %}div{% endif %} >