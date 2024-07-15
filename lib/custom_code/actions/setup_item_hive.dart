// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  This custom action is included in main.dart so runs on start up
//
//  This file creates the class 'Item' and its constructors
//  The  adapter is what is usually automatically generated in Flutter to make a g. file
//  I had to hand code it.
//
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

import 'package:hive_flutter/hive_flutter.dart';

late Box itemBox; //this is the tricky from video itemBox

class Item {
  String projectName;
  String location;
  String apartmentNumber;
  String size;
  String demand;
  String offer;
  String rentDemandMonthly;
  String interested;
  String cheque;
  String floor;
  String tower;
  String remarks;
  String name;
  String contact;
  String createdBy;

  Item(
      this.projectName,
      this.location,
      this.apartmentNumber,
      this.size,
      this.demand,
      this.offer,
      this.rentDemandMonthly,
      this.interested,
      this.cheque,
      this.floor,
      this.tower,
      this.remarks,
      this.name,
      this.contact,
      this.createdBy);

  @override
  String toString() {
    return 'Item{projectName: $projectName, location: $location, apartmentNumber: $apartmentNumber, size: $size, demand: $demand, offer: $offer, rentDemandMonthly: $rentDemandMonthly,  interested: $interested, cheque: $cheque, floor: $floor, tower: $tower, remarks: $remarks, name: $name, contact: $contact, createdBy: $createdBy }';
  }
}

// In Flutter apps, this portion is generated using Build Runner and Hive Generator
// to make a file named item.g.dart which is included in the above class.  I had to hand code this.
class ItemAdapter extends TypeAdapter<Item> {
  @override
  final typeId = 0;

  @override
  Item read(BinaryReader reader) {
    return Item(
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
      reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Item obj) {
    writer.write(obj.projectName);
    writer.write(obj.location);
    writer.write(obj.apartmentNumber);
    writer.write(obj.size);
    writer.write(obj.demand);
    writer.write(obj.offer);
    writer.write(obj.rentDemandMonthly);
    writer.write(obj.interested);
    writer.write(obj.cheque);
    writer.write(obj.floor);
    writer.write(obj.tower);
    writer.write(obj.remarks);
    writer.write(obj.name);
    writer.write(obj.contact);
    writer.write(obj.createdBy);
  }
}

Future setupItemHive() async {
  //  This portion initializes Hive application and also 'opens' the Hive Box = database
  //  'items' is the given name of the hive box of type <Item>
  //  **** very important, above note that the typeId = 0
  //  **** if you have another box such as 'orders' it will need a different typeId such as 1
  //  ++++++++++++++++++++++++++++++++++++

  await Hive.initFlutter();
  Hive.registerAdapter(ItemAdapter());
  itemBox = await Hive.openBox<Item>('items');
  // Add your function code here!
}
