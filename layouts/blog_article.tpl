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
    			{% editable article.title %}
    			{% if article.comments_count > 1 %}<a href="#comments" class="comments-link">({{article.comments_count}})</a>{% endif %}
    			<span class="date">{{article.created_at | format_date="long" }}</span>
    		</h1>
        </div>
		{% editable article.excerpt %}<br />
		{% editable article.body %}
        {% if editmode %}
            <div class="cfx article-tags">
                <div class="article-tag-icon"></div>
                {% editable article.tags %}
            </div>
          {% else %}
            {% unless article.tags == empty %}
                <div class="cfx article-tags">
                    <div class="article-tag-icon"></div>
                    {% for tag in article.tags %}
                        <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                    {% endfor %}
                </div>
            {% endunless %}
        {% endif %}
		<div class="blog-comment-form">
			{% commentform %}
                {% assign comment_name_error = false %}
                {% assign comment_email_error = false %}
                {% assign comment_body_error = false %}
                {% unless comment.valid? %}
                    {% for error in comment.errors %}
                        {% if error == "comment_author_blank" %}{% assign comment_name_error = true %}{% endif %}
                        {% if error == "comment_email_blank" %}{% assign comment_email_error = true %}{% endif %}
                        {% if error == "comment_body_blank" %}{% assign comment_body_error = true %}{% endif %}
                    {%endfor %}
                {% endunless %}
                
				<p class="blog-form-row">
					<label for="blog-comment-name">{{"name"|lc}}</label>
                    {% if comment_name_error %}<span class="comment-row-error">{{ "comment_author_blank" | lc }}</span>{% endif %}
					<input type="text" id="blog-comment-name" class="text-input" placeholder='{{ "forms.template.your_name" | lc }}' value="{{comment.author}}" name="comment[author]" />
				</p>
				<p class="blog-form-row">
					<label for="blog-comment-email">{{"email"|lc}}</label>
                    {% if comment_email_error %}<span class="comment-row-error">{{ "comment_email_blank" | lc }}</span>{% endif %}
					<input type="text" id="blog-comment-email" class="text-input" placeholder='{{ "forms.template.your_email" | lc }}' value="{{comment.author_email}}" name="comment[author_email]" />
				</p>
				<p class="blog-form-row">
					<label for="blog-comment-body">{{"comment"|lc}}</label>
                    {% if comment_body_error %}<span class="comment-row-error">{{ "comment_body_blank" | lc }}</span>{% endif %}
					<textarea id="blog-comment-body" cols="30" rows="1" class="text-input text-area js-autogrow-textarea" placeholder='{{ "forms.template.comments" | lc }}' name="comment[body]">{{comment.body}}</textarea>
				</p>
				<p class="blog-form-submit-row">
					<input type="submit" value="{{"submit"|lc}}" />
				</p>
			{% endcommentform %}
		</div>{% if article.comments_count > 0 %}
		<h2 class="blog-comments-heading" id="comments">{{"comments_for_count"|lc}}: {{article.comments_count}}</h2>
		<ul class="blog-comments">{% for comment in article.comments %}
			<li>
				<strong class="author">{{comment.author}}</strong> — {{comment.body_html}}
			</li>{% endfor %}
		</ul>{% endif %}
	</div>
	{% include "Footer" %}
</div>
{% include "JS" %}
</body>
</html>