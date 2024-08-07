# AMF

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
{% for key, value in open5gs.Vars.Namf_Communication.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Namf_Communication[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Namf_Communication[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Namf_EventExposure.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Namf_EventExposure[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Namf_EventExposure[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Namf_Location.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Namf_Location[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Namf_Location[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Namf_MT.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Namf_MT[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Namf_MT[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}
  </tbody>
<table>

