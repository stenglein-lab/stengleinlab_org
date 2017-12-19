---
layout: default
title: stenglein lab / papers
categories: 
 - papers
---

<div class="bigspacer"></div>	
{% for paper in site.categories.papers %}
    <div class="row">
		<div class="col-md-1 paperbox">
    	   <p class="small">{{ paper.year }}</p>
      </div>
		<div class="col-md-11 paperbox">
			<div class="media">
  				<a class="pull-right" href="{{ paper.url }}">
    				<img width=100 class="media-object" src="{{ paper.image }}">
  				</a>
 			 	<div class="media-body">
    				<div class="smallhead media-heading"><a href="{{ paper.url }}" class="off">{{ paper.title }}</a></div>
    				<p class="note">{{ paper.ref }} {{ paper.journal }}</p>
  				</div>
			</div>
        </div>
    </div><div class="bigspacer"></div>
{% endfor %}
