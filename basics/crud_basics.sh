# Create
db.collection.insertOne(data, options)
db.collection.insertMany(data, options)

# Read
db.collection.find(filter, options)
db.collection.findOne(filter, options)

# Update
db.collection.updateOne(filter, data, options)
db.collection.updateMany(filter, data, options)
db.collection.replaceOne(filter, data, options)
# Delete
db.collection.deleteOne(filter, options)
db.collection.deleteMany(filter, options)