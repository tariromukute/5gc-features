---
title: Feature evaluation of open source 5G core networks
layout: 'default'
---

## Table of Contents

{% for page in site.pages %}
  {% if page.path contains '_pages' %}
- [{{ page.title }}]({{ page.url | relative_url }})
  {% endif %}
{% endfor %}