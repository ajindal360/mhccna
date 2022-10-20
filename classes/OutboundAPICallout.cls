public class OutboundAPICallout { // SS-202
    @Future(callout=true)
    public static void apiCallout(String RecordId,String context, String ObjectName,String RrecordId, String Event) {
        try {
            System.debug('Event :' + Event);
            System.debug('RecordId :' + RecordId);
            System.debug('context :' + context);
            if(RecordId != null) {
                String source;
                String partnerid;
                String submittedby;
                String accountid;
                String body = '';
                String endPoint = '';
                String requestBody='';
                Integer statusCode	;
                //Outbound_Callout__c credentialsForSms = new Outbound_Callout__c();
                //credentialsForSms = Outbound_Callout__c.getOrgDefaults();
                List<Outbound_Callout_Setting__c> outbountCustomSetting = new List<Outbound_Callout_Setting__c>();
                outbountCustomSetting = [SELECT Endpoint__c,Object_Name__c,Path__c,SourceId__c FROM Outbound_Callout_Setting__c WHERE Object_Name__c =:ObjectName LIMIT 1];
                if(outbountCustomSetting[0].SourceId__c!=null){
                    source = outbountCustomSetting[0].SourceId__c;
                }
                System.debug('outbountCustomSetting :' + outbountCustomSetting[0]);
                if(outbountCustomSetting[0].Endpoint__c != null && Event!= null) {
                    if(ObjectName == 'Opportunity'){
                        if(Event == 'Create'){
                            endPoint = outbountCustomSetting[0].Endpoint__c +'/md/opportunity/created';
                        }else if(Event == 'Update'){
                            endPoint = outbountCustomSetting[0].Endpoint__c +'/md/opportunity/updated';
                        }
                        body = '{"source": "'+source+'","opportunityId": "'+RecordId+'"}';
                    }else if(ObjectName == 'Relationship'){
                        if(Event == 'Create'){
                            endPoint = outbountCustomSetting[0].Endpoint__c +'/md/account/created';
                        }else if(Event == 'Update'){
                            endPoint = outbountCustomSetting[0].Endpoint__c +'/md/account/updated';
                        }
                        body = '{"source": "'+source+'","accountid": "'+RecordId+'","context": "'+context+'"}';
                    }
                    System.debug('endPoint ::>>>>'+endPoint);
                    System.debug('body :>>>>'+body);
                    if(endPoint!= null && body!= null){
                        HttpRequest req = new HttpRequest();
                        req.setEndpoint(endPoint);
                        req.setMethod('POST');
                        req.setHeader('Content-Type', 'application/json;charset=UTF-8');
                        req.setBody(body);
                        Http http = new Http();
                        HTTPResponse res = http.send(req);
                        requestBody = res.getBody();
                        System.debug('response Body:'+res.getBody());
                        System.debug('response Body:'+res.getstatusCode());
                        statusCode = res.getstatusCode();
                    }
                    
                    Integration_log__c integrationRecord = New Integration_log__c();
                    integrationRecord.Request_body__c = body;
                    integrationRecord.Response_body__c = requestBody;
                    if(statusCode ==200){
                        integrationRecord.Status__c = 'Success';
                    }else{
                        integrationRecord.Status__c = 'Fail';
                    }
                    if(ObjectName == 'Opportunity'){
                        integrationRecord.Record_Id__c = RecordId;
                    }else if(ObjectName == 'Relationship'){
                        integrationRecord.Record_Id__c = RrecordId;
                    }
                    insert integrationRecord;
                        
                }
            }
        } catch(CalloutException exp) {
            System.debug('Exception message --->>:: ' + exp.getMessage() + ' At Line Number :: ' + exp.getLineNumber());
        }
    }
}