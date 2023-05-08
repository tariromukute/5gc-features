---
layout: table
title: Open source 5G Core networks comparison
---

5G Core NF service operations supported (Rel 17)

<script>
$(document).ready(function() {
  var jsonData = {};
  // Define an array to store the promises
  var promises = [];

  {% for file in site.static_files %}
    console.log('{{ file.path }}')
    {% if file.path contains 'comparison/' and file.path contains '.json' %}
      {% assign folders = file.path | split: "/" %}
      console.log('{{ folders[2] }}')
      promises.push($.getJSON('{{ site.baseurl }}{{ file.path }}', function(json) {
        $.each(json, function(key, value) {
          console.log(key)
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
