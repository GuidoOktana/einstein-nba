public with sharing class sampleDataCreation {

    public static void createData() { 

        List<ContentAsset> images = [Select Id, masterLabel from ContentAsset];

        Recommendation r1 = 
            new Recommendation(AcceptanceLabel='Accept',
            Description='25% Off Next Service Call',
            ActionReference='Retention_Offer', 
            Name='25% Off Next Service Call',
            RejectionLabel='Reject', 
            ImageId= images[2].Id);

        Recommendation r2 = 
            new Recommendation(AcceptanceLabel='Accept',
            Description='20% Discount On Upgrade',
            ActionReference='Upgrade_Discount', 
            Name='20% Discount On Upgrade',
            RejectionLabel= 'Reject',
            ImageId= images[0].Id);

        Recommendation r3 = 
            new Recommendation(AcceptanceLabel='Accept',
            Description='We can help with financing your boiler upgrade!',
            ActionReference='Upgrade_Financing', 
            Name='We can help with financing!',
            RejectionLabel= 'Reject',
            ImageId= images[1].Id);

        List<Recommendation> rList = new List<Recommendation>();

        rList.add(r1);
        rList.add(r2);
        rList.add(r3);
        insert rList;
    }

}
