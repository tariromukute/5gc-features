---
layout: table
title: Network Functions' SBI endpoints support (Rel 17)
permalink: /sbi/
---

5G Core NF service operations supported (Rel 17)

<!-- <h1>Number of keys in my JSON files:</h1>

{% assign totalKeys = 0 %}
{% for file in site.static_files %}
  {% if file.path contains 'comparison/open5gs' and file.path contains '.json' %}
    {% assign json = file.path | jsonify %}
    {% assign keys = json | size %}
    {% assign totalKeys = totalKeys | plus: keys %}
  {% endif %}
{% endfor %}

<p>{{ totalKeys }}</p> -->

<script>
$(document).ready(function() {
  var jsonData = {};
  // Define an array to store the promises
  var promises = [];

  // Read all the JSON file that contain invetory of supported operations
  {% for file in site.static_files %}
    console.log('{{ file.path }}')
    {% if file.path contains 'comparison/' and file.path contains '.json' %}
      {% assign folders = file.path | split: "/" %}
      console.log('{{ folders[2] }}')
      promises.push($.getJSON('{{ site.baseurl }}{{ file.path }}', function(json) {
        $.each(json, function(key, value) {
          // Put a tick if a key is true, i.e., operation supported and an x otherwise
          // folders[2] is the third layer in the folder structure which corresponds to the core network name
          jsonData[key] = { ...jsonData[key], {{ folders[2] }}: value === true ? '\u2705' : '\u274C' }
        });
      }));
    {% endif %}
  {% endfor %}
  $.when.apply($, promises).done(function() {
    console.log('All getJSON methods completed');
    
    // Call the callback function and pass myVariable and all data as arguments
    populateTable(jsonData);
  });
});

function pupulateNumberOfOperations(data) {
  var numHeader = $('#operations-count')

}

function populateTable(data) {
  var table = $('#data-table tbody');
  $.each(data, function(i, item) {
    console.log(item)
    console.log(i)
    var row = $('<tr>').append(
      $('<td>').text(i),
      $('<td>').text(item.open5gs),
      $('<td>').text(item.free5gc),
      $('<td>').text(item.oai)
    );
    table.append(row);
  });
}
</script>
