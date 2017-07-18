global with sharing class SupportServicesEvent implements Comparable {
    @AuraEnabled 
    public String CaseId { get; set; }
    @AuraEnabled 
    public String CaseNumber { get; set; }
    @AuraEnabled
    public DateTime EventDatetime { get; set; }
    @AuraEnabled
    public String EventTime { get; set; }
    @AuraEnabled 
    public String Location { get; set; }
    @AuraEnabled 
    public String Subcategory { get; set; }
    @AuraEnabled 
    public String Subcategory_2 { get; set; }
    @AuraEnabled 
    public String DeliveryStatus { get; set; }
    @AuraEnabled
    public String Status { get; set; }
    @AuraEnabled 
    public Boolean isDelivery { get; set; }
    @AuraEnabled 
    public Boolean isPickup { get; set; }
    @AuraEnabled
    public String ContactName {get; set;}
    
    public Integer compareTo(Object compareTo) {
        SupportServicesEvent compareToEvent = (SupportServicesEvent) compareTo;
        return(this.EventDatetime.getTime() - compareToEvent.EventDatetime.getTime()).intValue();
    }
    
    //test
}