# CHF

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
{% for key, value in open5gs.Vars.Nchf_ConvergedCharging.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nchf_ConvergedCharging[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nchf_ConvergedCharging[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nchf_OfflineOnlyCharging.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nchf_OfflineOnlyCharging[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nchf_OfflineOnlyCharging[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nchf_SpendingLimitControl.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nchf_SpendingLimitControl[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nchf_SpendingLimitControl[key] %}✅{% else %}❌{% endif %} </td>
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

