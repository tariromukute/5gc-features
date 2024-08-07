# TSCTSF

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
{% for key, value in open5gs.Vars.Ntsctsf_ASTI.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Ntsctsf_ASTI[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Ntsctsf_ASTI[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Ntsctsf_QoSandTSCAssistance.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Ntsctsf_QoSandTSCAssistance[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Ntsctsf_QoSandTSCAssistance[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Ntsctsf_TimeSynchronization.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Ntsctsf_TimeSynchronization[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Ntsctsf_TimeSynchronization[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

  </tbody>
<table>

