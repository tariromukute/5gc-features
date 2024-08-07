# UDSF

<table>
  <thead>
    <tr>
      <th>NF Service Operation</th>
      <th>Open5GS</th>
      <th>free5GC</th>
      <th>OAI CN5G</th>
    </tr>
  </thead>
  <tbody>
{% for key, value in open5gs.Vars.Nudsf_DataRepository.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudsf_DataRepository[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudsf_DataRepository[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudsf_Timer.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudsf_Timer[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudsf_Timer[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

  </tbody>
<table>

