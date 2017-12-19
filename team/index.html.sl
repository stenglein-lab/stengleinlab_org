---
layout: default
title: Lab Members
categories: 
 - team
---
<div class="bigspacer"></div>	
{% for member in site.categories.lab_members reversed %}
	 {% comment %}
    {% cycle 'add rows': '<div class="row">', nil, nil %}
	 {% endcomment %}

    {% cycle 'add rows': '<div class="row">' %}
		<div class="col-md-12 memberbox">
			<div class="media">
  				<a class="pull-left" href="{{ member.url }}">
    				<img width=200 class="media-object" src="{{ member.image }}">
  				</a>
 			 	<div class="media-body">
    				<div class="head media-heading"><a href="{{ member.url }}" class="off">{{ member.title }}</a></div>
    				<p class="note">{{ member.position }}</p>
  				</div>
			</div>
        </div>	  
	 {% comment %}
    {% cycle 'close rows': nil, nil, '</div><div class="bigspacer"></div>' %}
	 {% endcomment %}

    {% cycle 'close rows': '</div><div class="bigspacer"></div>' %}
{% endfor %}
{% cycle 'close rows': nil, '</div><div class="bigspacer"></div>', '</div><div class="bigspacer"></div>' %}
