# SMF

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
{% for key, value in open5gs.Vars.Nsmf_EventExposure.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nsmf_EventExposure[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nsmf_EventExposure[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nsmf_NIDD.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nsmf_NIDD[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nsmf_NIDD[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nsmf_PDUSession.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nsmf_PDUSession[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nsmf_PDUSession[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

  </tbody>
<table>

