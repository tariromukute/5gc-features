# PCF

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
{% for key, value in open5gs.Vars.Npcf_AMPolicyAuthorization.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_AMPolicyAuthorization[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_AMPolicyAuthorization[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Npcf_AMPolicyControl.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_AMPolicyControl[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_AMPolicyControl[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Npcf_BDTPolicyControl.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_BDTPolicyControl[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_BDTPolicyControl[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Npcf_EventExposure.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_EventExposure[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_EventExposure[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Npcf_MBSPolicyAuthorization.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_MBSPolicyAuthorization[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_MBSPolicyAuthorization[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Npcf_MBSPolicyControl.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_MBSPolicyControl[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_MBSPolicyControl[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Npcf_PolicyAuthorization.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_PolicyAuthorization[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_PolicyAuthorization[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Npcf_UEPolicyControl.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Npcf_UEPolicyControl[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Npcf_UEPolicyControl[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}
  </tbody>
<table>

