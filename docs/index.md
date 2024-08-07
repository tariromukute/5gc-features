---
# YAML header
render_macros: true
---

# 5GC features

## Introduction

This project provides a comparative analysis of various 5G Core Network (5GC) implementations, focusing on the implemented endpoints and features for each Network Function (NF). The goal is to offer a comprehensive overview of the capabilities of different 5GC solutions to assist users in understanding their specific functionalities.

The project includes detailed tables outlining the endpoints and operations supported by each NF in the compared implementations. Additionally, UML sequence diagrams generated using PlantUML illustrate the implemented steps for key 5G procedures, such as the registration procedure.

By providing this information, we aim to empower 5GC users to make informed decisions about selecting the most suitable 5GC implementation for their specific requirements and use cases.

**Note**: This README will be continuously updated as the project progresses and more implementations are analysed.

## Summary state of 5GC implementations

For detailed per NF comparison, click on **SBI endpoints (Rel 17)** and for detailed per procedure comparison, click on **Procedures (Rel 17)**

<table>
  <thead>
    <tr>
      <th>Network Function (NF)</th>
      <th>NF Service</th>
      <th>Open5GS</th>
      <th>free5GC</th>
      <th>OAI CN5G</th>
    </tr>
  </thead>
  <tbody>
  <!-- AMF -->
    <tr>
<td> AMF </td>
<td> Namf_Communication </td>
<td> [[ count_true({{ open5gs.Vars.Namf_Communication }}) ]] / {{ open5gs.Vars.Namf_Communication.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Namf_Communication }}) ]] / {{ free5gc.Vars.Namf_Communication.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Namf_Communication }}) ]] / {{ oai.Vars.Namf_Communication.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Namf_EventExposure </td>
<td> [[ count_true({{ open5gs.Vars.Namf_EventExposure }}) ]] / {{ open5gs.Vars.Namf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Namf_EventExposure }}) ]] / {{ free5gc.Vars.Namf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Namf_EventExposure }}) ]] / {{ oai.Vars.Namf_EventExposure.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Namf_Location </td>
<td> [[ count_true({{ open5gs.Vars.Namf_Location }}) ]] / {{ open5gs.Vars.Namf_Location.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Namf_Location }}) ]] / {{ free5gc.Vars.Namf_Location.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Namf_Location }}) ]] / {{ oai.Vars.Namf_Location.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Namf_MT </td>
<td> [[ count_true({{ open5gs.Vars.Namf_MT }}) ]] / {{ open5gs.Vars.Namf_MT.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Namf_MT }}) ]] / {{ free5gc.Vars.Namf_MT.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Namf_MT }}) ]] / {{ oai.Vars.Namf_MT.values() | length }} </td>
    </tr>

    <!-- SMF -->
    <tr>
<td> SMF </td>
<td> Nsmf_EventExposure </td>
<td> [[ count_true({{ open5gs.Vars.Nsmf_EventExposure }}) ]] / {{ open5gs.Vars.Nsmf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nsmf_EventExposure }}) ]] / {{ free5gc.Vars.Nsmf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nsmf_EventExposure }}) ]] / {{ oai.Vars.Nsmf_EventExposure.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nsmf_NIDD </td>
<td> [[ count_true({{ open5gs.Vars.Nsmf_NIDD }}) ]] / {{ open5gs.Vars.Nsmf_NIDD.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nsmf_NIDD }}) ]] / {{ free5gc.Vars.Nsmf_NIDD.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nsmf_NIDD }}) ]] / {{ oai.Vars.Nsmf_NIDD.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nsmf_PDUSession </td>
<td> [[ count_true({{ open5gs.Vars.Nsmf_PDUSession }}) ]] / {{ open5gs.Vars.Nsmf_PDUSession.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nsmf_PDUSession }}) ]] / {{ free5gc.Vars.Nsmf_PDUSession.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nsmf_PDUSession }}) ]] / {{ oai.Vars.Nsmf_PDUSession.values() | length }} </td>
    </tr>

    <!-- AUSF -->
    <tr>
<td> AUSF </td>
<td> Nausf_SoRProtection </td>
<td> [[ count_true({{ open5gs.Vars.Nausf_SoRProtection }}) ]] / {{ open5gs.Vars.Nausf_SoRProtection.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nausf_SoRProtection }}) ]] / {{ free5gc.Vars.Nausf_SoRProtection.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nausf_SoRProtection }}) ]] / {{ oai.Vars.Nausf_SoRProtection.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nausf_UEAuthentication </td>
<td> [[ count_true({{ open5gs.Vars.Nausf_UEAuthentication }}) ]] / {{ open5gs.Vars.Nausf_UEAuthentication.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nausf_UEAuthentication }}) ]] / {{ free5gc.Vars.Nausf_UEAuthentication.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nausf_UEAuthentication }}) ]] / {{ oai.Vars.Nausf_UEAuthentication.values() | length }} </td>
    </tr>

    <!-- NRF -->
    <tr>
<td> NRF </td>
<td> Nnrf_AccessToken </td>
<td> [[ count_true({{ open5gs.Vars.Nnrf_AccessToken }}) ]] / {{ open5gs.Vars.Nnrf_AccessToken.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnrf_AccessToken }}) ]] / {{ free5gc.Vars.Nnrf_AccessToken.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnrf_AccessToken }}) ]] / {{ oai.Vars.Nnrf_AccessToken.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnrf_NFDiscovery </td>
<td> [[ count_true({{ open5gs.Vars.Nnrf_NFDiscovery }}) ]] / {{ open5gs.Vars.Nnrf_NFDiscovery.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnrf_NFDiscovery }}) ]] / {{ free5gc.Vars.Nnrf_NFDiscovery.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnrf_NFDiscovery }}) ]] / {{ oai.Vars.Nnrf_NFDiscovery.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnrf_NFManagement </td>
<td> [[ count_true({{ open5gs.Vars.Nnrf_NFManagement }}) ]] / {{ open5gs.Vars.Nnrf_NFManagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnrf_NFManagement }}) ]] / {{ free5gc.Vars.Nnrf_NFManagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnrf_NFManagement }}) ]] / {{ oai.Vars.Nnrf_NFManagement.values() | length }} </td>
    </tr>

    <!-- PCF -->
    <tr>
<td> PCF </td>
<td> Npcf_AMPolicyAuthorization </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_AMPolicyAuthorization }}) ]] / {{ open5gs.Vars.Npcf_AMPolicyAuthorization.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_AMPolicyAuthorization }}) ]] / {{ free5gc.Vars.Npcf_AMPolicyAuthorization.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_AMPolicyAuthorization }}) ]] / {{ oai.Vars.Npcf_AMPolicyAuthorization.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Npcf_AMPolicyControl </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_AMPolicyControl }}) ]] / {{ open5gs.Vars.Npcf_AMPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_AMPolicyControl }}) ]] / {{ free5gc.Vars.Npcf_AMPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_AMPolicyControl }}) ]] / {{ oai.Vars.Npcf_AMPolicyControl.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Npcf_BDTPolicyControl </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_BDTPolicyControl }}) ]] / {{ open5gs.Vars.Npcf_BDTPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_BDTPolicyControl }}) ]] / {{ free5gc.Vars.Npcf_BDTPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_BDTPolicyControl }}) ]] / {{ oai.Vars.Npcf_BDTPolicyControl.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Npcf_EventExposure </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_EventExposure }}) ]] / {{ open5gs.Vars.Npcf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_EventExposure }}) ]] / {{ free5gc.Vars.Npcf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_EventExposure }}) ]] / {{ oai.Vars.Npcf_EventExposure.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Npcf_MBSPolicyAuthorization </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_MBSPolicyAuthorization }}) ]] / {{ open5gs.Vars.Npcf_MBSPolicyAuthorization.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_MBSPolicyAuthorization }}) ]] / {{ free5gc.Vars.Npcf_MBSPolicyAuthorization.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_MBSPolicyAuthorization }}) ]] / {{ oai.Vars.Npcf_MBSPolicyAuthorization.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Npcf_MBSPolicyControl </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_MBSPolicyControl }}) ]] / {{ open5gs.Vars.Npcf_MBSPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_MBSPolicyControl }}) ]] / {{ free5gc.Vars.Npcf_MBSPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_MBSPolicyControl }}) ]] / {{ oai.Vars.Npcf_MBSPolicyControl.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Npcf_PolicyAuthorization </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_PolicyAuthorization }}) ]] / {{ open5gs.Vars.Npcf_PolicyAuthorization.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_PolicyAuthorization }}) ]] / {{ free5gc.Vars.Npcf_PolicyAuthorization.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_PolicyAuthorization }}) ]] / {{ oai.Vars.Npcf_PolicyAuthorization.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Npcf_UEPolicyControl </td>
<td> [[ count_true({{ open5gs.Vars.Npcf_UEPolicyControl }}) ]] / {{ open5gs.Vars.Npcf_UEPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Npcf_UEPolicyControl }}) ]] / {{ free5gc.Vars.Npcf_UEPolicyControl.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Npcf_UEPolicyControl }}) ]] / {{ oai.Vars.Npcf_UEPolicyControl.values() | length }} </td>
    </tr>

    <!-- UDR -->
    <tr>
<td> UDR </td>
<td> Nudr_DataRepository </td>
<td> [[ count_true({{ open5gs.Vars.Nudr_DataRepository }}) ]] / {{ open5gs.Vars.Nudr_DataRepository.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudr_DataRepository }}) ]] / {{ free5gc.Vars.Nudr_DataRepository.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudr_DataRepository }}) ]] / {{ oai.Vars.Nudr_DataRepository.values() | length }} </td>
    </tr>
    

    <!-- UDM -->
    <tr>
<td> UDM </td>
<td> Nudm_EE </td>
<td> [[ count_true({{ open5gs.Vars.Nudm_EE }}) ]] / {{ open5gs.Vars.Nudm_EE.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudm_EE }}) ]] / {{ free5gc.Vars.Nudm_EE.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudm_EE }}) ]] / {{ oai.Vars.Nudm_EE.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nudm_NIDDAU </td>
<td> [[ count_true({{ open5gs.Vars.Nudm_NIDDAU }}) ]] / {{ open5gs.Vars.Nudm_NIDDAU.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudm_NIDDAU }}) ]] / {{ free5gc.Vars.Nudm_NIDDAU.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudm_NIDDAU }}) ]] / {{ oai.Vars.Nudm_NIDDAU.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nudm_PP </td>
<td> [[ count_true({{ open5gs.Vars.Nudm_PP }}) ]] / {{ open5gs.Vars.Nudm_PP.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudm_PP }}) ]] / {{ free5gc.Vars.Nudm_PP.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudm_PP }}) ]] / {{ oai.Vars.Nudm_PP.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nudm_ReportSMDeliveryStatus </td>
<td> [[ count_true({{ open5gs.Vars.Nudm_ReportSMDeliveryStatus }}) ]] / {{ open5gs.Vars.Nudm_ReportSMDeliveryStatus.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudm_ReportSMDeliveryStatus }}) ]] / {{ free5gc.Vars.Nudm_ReportSMDeliveryStatus.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudm_ReportSMDeliveryStatus }}) ]] / {{ oai.Vars.Nudm_ReportSMDeliveryStatus.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nudm_SDM </td>
<td> [[ count_true({{ open5gs.Vars.Nudm_SDM }}) ]] / {{ open5gs.Vars.Nudm_SDM.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudm_SDM }}) ]] / {{ free5gc.Vars.Nudm_SDM.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudm_SDM }}) ]] / {{ oai.Vars.Nudm_SDM.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nudm_UEAU </td>
<td> [[ count_true({{ open5gs.Vars.Nudm_UEAU }}) ]] / {{ open5gs.Vars.Nudm_UEAU.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudm_UEAU }}) ]] / {{ free5gc.Vars.Nudm_UEAU.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudm_UEAU }}) ]] / {{ oai.Vars.Nudm_UEAU.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nudm_UECM </td>
<td> [[ count_true({{ open5gs.Vars.Nudm_UECM }}) ]] / {{ open5gs.Vars.Nudm_UECM.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nudm_UECM }}) ]] / {{ free5gc.Vars.Nudm_UECM.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nudm_UECM }}) ]] / {{ oai.Vars.Nudm_UECM.values() | length }} </td>
    </tr>


    <!-- NEF -->
    <tr>
<td> NEF </td>
<td> Nnef_Authentication </td>
<td> [[ count_true({{ open5gs.Vars.Nnef_Authentication }}) ]] / {{ open5gs.Vars.Nnef_Authentication.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnef_Authentication }}) ]] / {{ free5gc.Vars.Nnef_Authentication.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnef_Authentication }}) ]] / {{ oai.Vars.Nnef_Authentication.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnef_EventExposure </td>
<td> [[ count_true({{ open5gs.Vars.Nnef_EventExposure }}) ]] / {{ open5gs.Vars.Nnef_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnef_EventExposure }}) ]] / {{ free5gc.Vars.Nnef_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnef_EventExposure }}) ]] / {{ oai.Vars.Nnef_EventExposure.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnef_PFDmanagement </td>
<td> [[ count_true({{ open5gs.Vars.Nnef_PFDmanagement }}) ]] / {{ open5gs.Vars.Nnef_PFDmanagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnef_PFDmanagement }}) ]] / {{ free5gc.Vars.Nnef_PFDmanagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnef_PFDmanagement }}) ]] / {{ oai.Vars.Nnef_PFDmanagement.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnef_SMContext </td>
<td> [[ count_true({{ open5gs.Vars.Nnef_SMContext }}) ]] / {{ open5gs.Vars.Nnef_SMContext.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnef_SMContext }}) ]] / {{ free5gc.Vars.Nnef_SMContext.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnef_SMContext }}) ]] / {{ oai.Vars.Nnef_SMContext.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnef_SMService </td>
<td> [[ count_true({{ open5gs.Vars.Nnef_SMService }}) ]] / {{ open5gs.Vars.Nnef_SMService.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnef_SMService }}) ]] / {{ free5gc.Vars.Nnef_SMService.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnef_SMService }}) ]] / {{ oai.Vars.Nnef_SMService.values() | length }} </td>
    </tr>


    <!-- NSSF -->
    <tr>
<td> NSSF </td>
<td> Nnssf_NSSAIAvailability </td>
<td> [[ count_true({{ open5gs.Vars.Nnssf_NSSAIAvailability }}) ]] / {{ open5gs.Vars.Nnssf_NSSAIAvailability.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnssf_NSSAIAvailability }}) ]] / {{ free5gc.Vars.Nnssf_NSSAIAvailability.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnssf_NSSAIAvailability }}) ]] / {{ oai.Vars.Nnssf_NSSAIAvailability.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnssf_NSSelection </td>
<td> [[ count_true({{ open5gs.Vars.Nnssf_NSSelection }}) ]] / {{ open5gs.Vars.Nnssf_NSSelection.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnssf_NSSelection }}) ]] / {{ free5gc.Vars.Nnssf_NSSelection.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnssf_NSSelection }}) ]] / {{ oai.Vars.Nnssf_NSSelection.values() | length }} </td>
    </tr>


    <!-- BSF -->
    <tr>
<td> BSF </td>
<td> Nbsf_Management </td>
<td> [[ count_true({{ open5gs.Vars.Nbsf_Management }}) ]] / {{ open5gs.Vars.Nbsf_Management.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nbsf_Management }}) ]] / {{ free5gc.Vars.Nbsf_Management.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nbsf_Management }}) ]] / {{ oai.Vars.Nbsf_Management.values() | length }} </td>
    </tr>


    <!-- AF -->
    <tr>
<td> AF </td>
<td> Naf_Authentication </td>
<td> [[ count_true({{ open5gs.Vars.Naf_Authentication }}) ]] / {{ open5gs.Vars.Naf_Authentication.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Naf_Authentication }}) ]] / {{ free5gc.Vars.Naf_Authentication.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Naf_Authentication }}) ]] / {{ oai.Vars.Naf_Authentication.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Naf_EventExposure </td>
<td> [[ count_true({{ open5gs.Vars.Naf_EventExposure }}) ]] / {{ open5gs.Vars.Naf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Naf_EventExposure }}) ]] / {{ free5gc.Vars.Naf_EventExposure.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Naf_EventExposure }}) ]] / {{ oai.Vars.Naf_EventExposure.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Naf_ProSe </td>
<td> [[ count_true({{ open5gs.Vars.Naf_ProSe }}) ]] / {{ open5gs.Vars.Naf_ProSe.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Naf_ProSe }}) ]] / {{ free5gc.Vars.Naf_ProSe.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Naf_ProSe }}) ]] / {{ oai.Vars.Naf_ProSe.values() | length }} </td>
    </tr>


    <!-- NWDAF -->
    <tr>
<td> NWDAF </td>
<td> Nnwdaf_AnalyticsInfo </td>
<td> [[ count_true({{ open5gs.Vars.Nnwdaf_AnalyticsInfo }}) ]] / {{ open5gs.Vars.Nnwdaf_AnalyticsInfo.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnwdaf_AnalyticsInfo }}) ]] / {{ free5gc.Vars.Nnwdaf_AnalyticsInfo.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnwdaf_AnalyticsInfo }}) ]] / {{ oai.Vars.Nnwdaf_AnalyticsInfo.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnwdaf_DataManagement </td>
<td> [[ count_true({{ open5gs.Vars.Nnwdaf_DataManagement }}) ]] / {{ open5gs.Vars.Nnwdaf_DataManagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnwdaf_DataManagement }}) ]] / {{ free5gc.Vars.Nnwdaf_DataManagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnwdaf_DataManagement }}) ]] / {{ oai.Vars.Nnwdaf_DataManagement.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnwdaf_EventsSubscription </td>
<td> [[ count_true({{ open5gs.Vars.Nnwdaf_EventsSubscription }}) ]] / {{ open5gs.Vars.Nnwdaf_EventsSubscription.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnwdaf_EventsSubscription }}) ]] / {{ free5gc.Vars.Nnwdaf_EventsSubscription.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnwdaf_EventsSubscription }}) ]] / {{ oai.Vars.Nnwdaf_EventsSubscription.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnwdaf_MLModelProvision </td>
<td> [[ count_true({{ open5gs.Vars.Nnwdaf_MLModelProvision }}) ]] / {{ open5gs.Vars.Nnwdaf_MLModelProvision.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnwdaf_MLModelProvision }}) ]] / {{ free5gc.Vars.Nnwdaf_MLModelProvision.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnwdaf_MLModelProvision }}) ]] / {{ oai.Vars.Nnwdaf_MLModelProvision.values() | length }} </td>
    </tr>


    <!-- DCCF -->
    <tr>
<td> DCCF </td>
<td> Ndccf_ContextManagement </td>
<td> [[ count_true({{ open5gs.Vars.Ndccf_ContextManagement }}) ]] / {{ open5gs.Vars.Ndccf_ContextManagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Ndccf_ContextManagement }}) ]] / {{ free5gc.Vars.Ndccf_ContextManagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Ndccf_ContextManagement }}) ]] / {{ oai.Vars.Ndccf_ContextManagement.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Ndccf_DataManagement </td>
<td> [[ count_true({{ open5gs.Vars.Ndccf_DataManagement }}) ]] / {{ open5gs.Vars.Ndccf_DataManagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Ndccf_DataManagement }}) ]] / {{ free5gc.Vars.Ndccf_DataManagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Ndccf_DataManagement }}) ]] / {{ oai.Vars.Ndccf_DataManagement.values() | length }} </td>
    </tr>


    <!-- EASDF -->
    <tr>
<td> EASDF </td>
<td> Neasdf_BaselineDNSPattern </td>
<td> [[ count_true({{ open5gs.Vars.Neasdf_BaselineDNSPattern }}) ]] / {{ open5gs.Vars.Neasdf_BaselineDNSPattern.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Neasdf_BaselineDNSPattern }}) ]] / {{ free5gc.Vars.Neasdf_BaselineDNSPattern.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Neasdf_BaselineDNSPattern }}) ]] / {{ oai.Vars.Neasdf_BaselineDNSPattern.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Neasdf_DNSContext </td>
<td> [[ count_true({{ open5gs.Vars.Neasdf_DNSContext }}) ]] / {{ open5gs.Vars.Neasdf_DNSContext.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Neasdf_DNSContext }}) ]] / {{ free5gc.Vars.Neasdf_DNSContext.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Neasdf_DNSContext }}) ]] / {{ oai.Vars.Neasdf_DNSContext.values() | length }} </td>
    </tr>


    <!-- SMSF -->
    <tr>
<td> SMSF </td>
<td> Nsmsf_SMService </td>
<td> [[ count_true({{ open5gs.Vars.Nsmsf_SMService }}) ]] / {{ open5gs.Vars.Nsmsf_SMService.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nsmsf_SMService }}) ]] / {{ free5gc.Vars.Nsmsf_SMService.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nsmsf_SMService }}) ]] / {{ oai.Vars.Nsmsf_SMService.values() | length }} </td>
    </tr>
    

    <!-- GMLC -->
    <tr>
<td> GMLC </td>
<td> Ngmlc_Location </td>
<td> [[ count_true({{ open5gs.Vars.Ngmlc_Location }}) ]] / {{ open5gs.Vars.Ngmlc_Location.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Ngmlc_Location }}) ]] / {{ free5gc.Vars.Ngmlc_Location.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Ngmlc_Location }}) ]] / {{ oai.Vars.Ngmlc_Location.values() | length }} </td>
    </tr>


    <!-- UCMF -->
    <tr>
<td> UCMF </td>
<td> Nucmf_Provisioning </td>
<td> [[ count_true({{ open5gs.Vars.Nucmf_Provisioning }}) ]] / {{ open5gs.Vars.Nucmf_Provisioning.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nucmf_Provisioning }}) ]] / {{ free5gc.Vars.Nucmf_Provisioning.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nucmf_Provisioning }}) ]] / {{ oai.Vars.Nucmf_Provisioning.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nucmf_UECapabilityManagement </td>
<td> [[ count_true({{ open5gs.Vars.Nucmf_UECapabilityManagement }}) ]] / {{ open5gs.Vars.Nucmf_UECapabilityManagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nucmf_UECapabilityManagement }}) ]] / {{ free5gc.Vars.Nucmf_UECapabilityManagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nucmf_UECapabilityManagement }}) ]] / {{ oai.Vars.Nucmf_UECapabilityManagement.values() | length }} </td>
    </tr>


    <!-- MBSMF -->
    <tr>
<td> MBSMF </td>
<td> Nmbsmf_TMGI </td>
<td> [[ count_true({{ open5gs.Vars.Nmbsmf_TMGI }}) ]] / {{ open5gs.Vars.Nmbsmf_TMGI.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nmbsmf_TMGI }}) ]] / {{ free5gc.Vars.Nmbsmf_TMGI.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nmbsmf_TMGI }}) ]] / {{ oai.Vars.Nmbsmf_TMGI.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nmbsmf_MBSSession </td>
<td> [[ count_true({{ open5gs.Vars.Nmbsmf_MBSSession }}) ]] / {{ open5gs.Vars.Nmbsmf_MBSSession.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nmbsmf_MBSSession }}) ]] / {{ free5gc.Vars.Nmbsmf_MBSSession.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nmbsmf_MBSSession }}) ]] / {{ oai.Vars.Nmbsmf_MBSSession.values() | length }} </td>
    </tr>


    <!-- MFAF -->
    <tr>
<td> MFAF </td>
<td> Nmfaf_3caDataManagement </td>
<td> [[ count_true({{ open5gs.Vars.Nmfaf_3caDataManagement }}) ]] / {{ open5gs.Vars.Nmfaf_3caDataManagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nmfaf_3caDataManagement }}) ]] / {{ free5gc.Vars.Nmfaf_3caDataManagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nmfaf_3caDataManagement }}) ]] / {{ oai.Vars.Nmfaf_3caDataManagement.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nmfaf_3daDataManagement </td>
<td> [[ count_true({{ open5gs.Vars.Nmfaf_3daDataManagement }}) ]] / {{ open5gs.Vars.Nmfaf_3daDataManagement.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nmfaf_3daDataManagement }}) ]] / {{ free5gc.Vars.Nmfaf_3daDataManagement.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nmfaf_3daDataManagement }}) ]] / {{ oai.Vars.Nmfaf_3daDataManagement.values() | length }} </td>
    </tr>


    <!-- NSACF -->
    <tr>
<td> NSACF </td>
<td> Nnsacf_NSAC </td>
<td> [[ count_true({{ open5gs.Vars.Nnsacf_NSAC }}) ]] / {{ open5gs.Vars.Nnsacf_NSAC.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnsacf_NSAC }}) ]] / {{ free5gc.Vars.Nnsacf_NSAC.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnsacf_NSAC }}) ]] / {{ oai.Vars.Nnsacf_NSAC.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnsacf_SliceEventExposure </td>
<td> [[ count_true({{ open5gs.Vars.Nnsacf_SliceEventExposure }}) ]] / {{ open5gs.Vars.Nnsacf_SliceEventExposure.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnsacf_SliceEventExposure }}) ]] / {{ free5gc.Vars.Nnsacf_SliceEventExposure.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnsacf_SliceEventExposure }}) ]] / {{ oai.Vars.Nnsacf_SliceEventExposure.values() | length }} </td>
    </tr>


    <!-- NSSAAF -->
    <tr>
<td> NSSAAF </td>
<td> Nnssaaf_AIW </td>
<td> [[ count_true({{ open5gs.Vars.Nnssaaf_AIW }}) ]] / {{ open5gs.Vars.Nnssaaf_AIW.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnssaaf_AIW }}) ]] / {{ free5gc.Vars.Nnssaaf_AIW.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnssaaf_AIW }}) ]] / {{ oai.Vars.Nnssaaf_AIW.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Nnssaaf_NSSAA </td>
<td> [[ count_true({{ open5gs.Vars.Nnssaaf_NSSAA }}) ]] / {{ open5gs.Vars.Nnssaaf_NSSAA.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Nnssaaf_NSSAA }}) ]] / {{ free5gc.Vars.Nnssaaf_NSSAA.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Nnssaaf_NSSAA }}) ]] / {{ oai.Vars.Nnssaaf_NSSAA.values() | length }} </td>
    </tr>


    <!-- TSCTSF -->
    <tr>
<td> TSCTSF </td>
<td> Ntsctsf_ASTI </td>
<td> [[ count_true({{ open5gs.Vars.Ntsctsf_ASTI }}) ]] / {{ open5gs.Vars.Ntsctsf_ASTI.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Ntsctsf_ASTI }}) ]] / {{ free5gc.Vars.Ntsctsf_ASTI.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Ntsctsf_ASTI }}) ]] / {{ oai.Vars.Ntsctsf_ASTI.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Ntsctsf_QoSandTSCAssistance </td>
<td> [[ count_true({{ open5gs.Vars.Ntsctsf_QoSandTSCAssistance }}) ]] / {{ open5gs.Vars.Ntsctsf_QoSandTSCAssistance.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Ntsctsf_QoSandTSCAssistance }}) ]] / {{ free5gc.Vars.Ntsctsf_QoSandTSCAssistance.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Ntsctsf_QoSandTSCAssistance }}) ]] / {{ oai.Vars.Ntsctsf_QoSandTSCAssistance.values() | length }} </td>
    </tr>
    <tr>
    <td>  </td>
<td> Ntsctsf_TimeSynchronization </td>
<td> [[ count_true({{ open5gs.Vars.Ntsctsf_TimeSynchronization }}) ]] / {{ open5gs.Vars.Ntsctsf_TimeSynchronization.values() | length }} </td> 
<td> [[ count_true({{ free5gc.Vars.Ntsctsf_TimeSynchronization }}) ]] / {{ free5gc.Vars.Ntsctsf_TimeSynchronization.values() | length }} </td> 
<td> [[ count_true({{ oai.Vars.Ntsctsf_TimeSynchronization }}) ]] / {{ oai.Vars.Ntsctsf_TimeSynchronization.values() | length }} </td>
    </tr>
    
  </tbody>
</table>
