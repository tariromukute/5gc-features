# UDM

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
{% for key, value in open5gs.Vars.Nudm_EE.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_EE[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_EE[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudm_NIDDAU.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_NIDDAU[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_NIDDAU[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudm_PP.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_PP[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_PP[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudm_ReportSMDeliveryStatus.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_ReportSMDeliveryStatus[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_ReportSMDeliveryStatus[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudm_SDM.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_SDM[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_SDM[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudm_SSAU.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_SSAU[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_SSAU[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudm_UEAU.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_UEAU[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_UEAU[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

{% for key, value in open5gs.Vars.Nudm_UECM.items() %}
    <tr>
<td> {{ key }} </td> 
<td>{% if value %}✅{% else %}❌{% endif %} </td> 
<td>{% if free5gc.Vars.Nudm_UECM[key] %}✅{% else %}❌{% endif %} </td> 
<td>{% if oai.Vars.Nudm_UECM[key] %}✅{% else %}❌{% endif %} </td>
    </tr>
{% endfor %}

  </tbody>
<table>

