# NEF

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
{% for key, value in open5gs.Vars.Nnef_Authentication.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnef_Authentication[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnef_Authentication[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnef_EventExposure.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnef_EventExposure[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnef_EventExposure[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnef_PFDmanagement.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnef_PFDmanagement[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnef_PFDmanagement[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnef_SMContext.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnef_SMContext[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnef_SMContext[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nnef_SMService.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nnef_SMService[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nnef_SMService[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}
  </tbody>
<table>

