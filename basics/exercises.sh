# Change to DB
use hospital

# Insert 3 Patients with at least 1 history per patient
db.patientData.insertMany([
    {
        "firstName": "John",
        "lastName": "Doe",
        "age": 20,
        "history": [
            {"disease": "common cold", "treatment": "paracetamol"}
        ]
    },
    {
        "firstName": "Robin",
        "lastName": "Hood",
        "age": 32,
        "history": [
            {"disease": "common cold", "treatment": "paracetamol"},
            {"disease": "cough", "treatment": "benadryl"}
        ]
    },
    {
        "firstName": "Big",
        "lastName": "John",
        "age": 42,
        "history": [
            {"disease": "common cold", "treatment": "paracetamol"},
            {"disease": "cough", "treatment": "benadryl"},
            {"disease": "headache", "treatment": "disprin"}
        ]
    }
])


# Update the required values
db.patientData.updateOne({"lastName": "Doe"}, {
    $set: {age: 21, name: "John Doe", history: [{disease: "depression", treatment: "coding"}]}})

# Find all patients older than 30
db.patientData.find({"age": {$gt: 30}}).pretty()

# Delete All patients with cold as a disease
db.patientData.deleteMany({"history.disease": "common cold"})

# NOTES -----------------------------------------------------------------------
# Database, Collections, Docs:
# - A Database holds many collections and each collection can hold many docs
# - Database and Collections are lazily created i.e. Through additions of docs
# - Document --> Collection --> DB ; Document --x--> DB

# CRUD Ops:
# - Create, Read, Update, Delete
# - Multiple Ops available on Mongo
# - find() returns a cursor and not documents
# - Filters are used to find specifc docs

# Doc Structure:
# - Unique ID
# - Embedded Docs and Array Fields are allowed

# Retrieving Data:
# - Filters and Operators are used to limit the number of docs you retrieve
# - Projection is used to limit the set of fields you retrieve


