db.flightsData.insertMany([
    {
        "departureAirport": "MUC",
        "arrivalAirport": "SFO",
        "aircraft": "A380",
        "distance": 12000,
        "intercontinental": true
    },
    {
        "departureAirport": "UCX",
        "arrivalAirport": "TLR",
        "aircraft": "A380",
        "distance": 15000,
        "intercontinental": false
    }
])

db.flightsData.updateOne({distance: 12000}, {$set: {marker: "delete"}})

db.flightsData.find({intercontinental: true}).pretty()
db.flightsData.find({distance: {$gt: 14000}}).pretty()
db.flightsData.findOne({distance: {$gt: 10000}})

db.flightsData.updateMany({}, {$set: {marker: "toDelete"}})

db.flightsData.deleteMany({marker:"toDelete"})

