---
title: Home
layout: 'default'
---

# Welcome to my website

## Table of Contents

{% for page in site.pages %}
  {% if page.path contains '_pages' %}
- [{{ page.title }}]({{ page.url | relative_url }})
  {% endif %}
{% endfor %}