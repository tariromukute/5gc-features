# NWDAF

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
{% for key, value in open5gs.Vars.Nnwdaf_AnalyticsInfo.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnwdaf_AnalyticsInfo[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnwdaf_AnalyticsInfo[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnwdaf_DataManagement.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnwdaf_DataManagement[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnwdaf_DataManagement[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnwdaf_EventsSubscription.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnwdaf_EventsSubscription[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnwdaf_EventsSubscription[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnwdaf_MLModelProvision.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnwdaf_MLModelProvision[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnwdaf_MLModelProvision[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}
  </tbody>
<table>

