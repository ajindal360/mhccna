<?xml version="1.0" encoding="UTF-8"?>
<Profile xmlns="http://soap.sforce.com/2006/04/metadata">
    <custom>true</custom>
    <fieldPermissions>
        <editable>true</editable>
        <field>Integration_Log__c.Record_Id__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Integration_Log__c.Request_Body__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Integration_Log__c.Response_Body__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Integration_Log__c.Status__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Sales_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Target__c.Active__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Target__c.Current_Montly_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Target__c.Current_Quarterly_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Target__c.Q1__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Target__c.Q2__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Target__c.Q3__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Target__c.Q4__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Sales_Target__c.Target_Unique_Key__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Sales_Target__c.User__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Annual_Performance__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Annual_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Current_Fiscal_Year_Performance__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Current_Month_Performance__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Current_Monthly_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Current_Quarter_Performance__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Current_Quarterly_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Opportunity.Sales_Targets__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Targets__c.Active__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Targets__c.Current_Montly_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Targets__c.Current_Quarterly_Target__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Targets__c.Q1__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Targets__c.Q2__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Targets__c.Q3__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>false</editable>
        <field>Sales_Targets__c.Q4__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Sales_Targets__c.Target_Unique_Key__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <fieldPermissions>
        <editable>true</editable>
        <field>Sales_Targets__c.User__c</field>
        <readable>true</readable>
    </fieldPermissions>
    <layoutAssignments>
        <layout>Sales_Target__c-Sales Targets Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Opportunity-Opportunity Layout</layout>
    </layoutAssignments>
    <layoutAssignments>
        <layout>Sales_Targets__c-Sales Targets Layout</layout>
    </layoutAssignments>
    <tabVisibilities>
        <tab>Sales_Target__c</tab>
        <visibility>DefaultOn</visibility>
    </tabVisibilities>
    <tabVisibilities>
        <tab>Sales_Targets__c</tab>
        <visibility>DefaultOff</visibility>
    </tabVisibilities>
    <userLicense>Salesforce</userLicense>
    <classAccesses>
        <apexClass>OutboundAPICallout</apexClass>
        <enabled>false</enabled>
    </classAccesses>
</Profile>