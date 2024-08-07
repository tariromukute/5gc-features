# NSSF

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
{% for key, value in open5gs.Vars.Nnssf_NSSAIAvailability.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnssf_NSSAIAvailability[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnssf_NSSAIAvailability[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnssf_NSSelection.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnssf_NSSelection[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnssf_NSSelection[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

  </tbody>
<table>

