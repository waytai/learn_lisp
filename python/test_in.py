#########################################################################
#-*- coding:utf-8 -*-
# File Name: test_in.py
#########################################################################
#!/bin/python
from settings import DB
from bson.objectid import ObjectId

def get_room_contract_signed_by_team(query):
    count_number = DB.room_order.find(query).count()
    return count_number

id_list = [ObjectId("562499fce8950a423ae723a5"), ObjectId("562499fce8950a423ae723a6"), ObjectId("562499fce8950a423ae723a7"), ObjectId("562499fce8950a423ae723a8")]
query = {}
query["_id"] = {"$in":id_list}

ret = get_room_contract_signed_by_team(query)
print ret
