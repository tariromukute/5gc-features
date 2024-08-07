# EASDF

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
{% for key, value in open5gs.Vars.Neasdf_BaselineDNSPattern.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Neasdf_BaselineDNSPattern[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Neasdf_BaselineDNSPattern[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Neasdf_DNSContext.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Neasdf_DNSContext[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Neasdf_DNSContext[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

  </tbody>
<table>

