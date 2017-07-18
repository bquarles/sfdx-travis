@isTest
private class SupportServicesEventTEST {
    @isTest
    public static void test() {
       
    	SupportServicesEvent event1 = new SupportServicesEvent();
        event1.EventDatetime = datetime.now();
        event1.CaseId = '50061000009ivoZAAQ';
        event1.CaseNumber = '00018474';
        event1.ContactName = 'Bilbo Baggins';
        event1.DeliveryStatus = 'Scheduled';
        event1.EventTime = '2:00 PM';
        event1.isDelivery = TRUE;
        event1.isPickup = FALSE;
        event1.Location = 'HB317';
        event1.Status = 'New';
        event1.Subcategory = 'Laptop';
        event1.Subcategory_2 = '';
        
        SupportServicesEvent event2 = new SupportServicesEvent();
        event2.EventDatetime = datetime.now().addHours(3);
        
        SupportServicesEvent event3 = new SupportServicesEvent();
        event3.EventDatetime = datetime.now().addHours(1);
        
        List<SupportServicesEvent> events = new List<SupportServicesEvent>();
        events.add(event3);
        events.add(event2);
        events.add(event1);
        events.sort();
        
        //Expected order is 1,3,2
        System.assertEquals(event1, events[0]);
        System.assertEquals(event3, events[1]);
        System.assertEquals(event2, events[2]);
        
    }
}