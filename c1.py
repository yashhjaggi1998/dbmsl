import pymongo
from pymongo import MongoClient

client = MongoClient('mongodb://10.10.15.202') #recieving mongo reference intp pyvariable and also opening mongodb

db = client.te3238db  #recieving database into python variable

movies  = db.Movies  #recieving collection into python variable


''' insert operation
movie = { "Name" : "BMB" , "Stars" : 5 , "Reviews" : "Exceptional"}
movie_id = movies.insert_one(movie).inserted_id

movie = { "Name" : "CKKMKKC" , "Stars" : 4 , "Reviews" : "Sporty"}
movie_id = movies.insert_one(movie).inserted_id
'''

''' read operation
for movie in movies.find():
	print(movie)
'''
print(movies.count())

# edit/update operation
#Movies is used and not Movies as it is to written or reflected in the database
db.Movies.update( {"Name" : "CKKMKKC" } , { "$set" : {"Name" : "SMS"}} , upsert = False , multi = False)