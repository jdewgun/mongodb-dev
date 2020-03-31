# Use the following to get all present databases on the mongo client
show dbs

# Switch to database or create and switch to database
use flightsData

# Insert One Document
db.flightsData.insertOne({
    "departureAirport": "MUC",
    "arrivalAirport": "SFO",
    "aircraft": "A380",
    "distance": 12000,
    "intercontinental": true
})

# Insert One More Document
db.flightsData.insertOne({
    departureAirport: "TXL",
    arrivalAirport: "LHR"
})

# Insert One Document with custom _id field
db.flightsData.insertOne({
    departureAirport: "TXL",
    arrivalAirport: "LHR",
    _id: "uniqueTXLLHRId1"
})