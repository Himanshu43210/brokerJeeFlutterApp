// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemFlowStruct extends BaseStruct {
  ItemFlowStruct({
    String? projectName,
    String? location,
    String? apartmentNumber,
    String? size,
    String? demand,
    String? offer,
    String? interested,
    String? cheque,
    String? floor,
    String? tower,
    String? remarks,
    String? name,
    String? contact,
    String? createdBy,
    String? rentDemandMonthly,
    int? id,
  })  : _projectName = projectName,
        _location = location,
        _apartmentNumber = apartmentNumber,
        _size = size,
        _demand = demand,
        _offer = offer,
        _interested = interested,
        _cheque = cheque,
        _floor = floor,
        _tower = tower,
        _remarks = remarks,
        _name = name,
        _contact = contact,
        _createdBy = createdBy,
        _rentDemandMonthly = rentDemandMonthly,
        _id = id;

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  set projectName(String? val) => _projectName = val;

  bool hasProjectName() => _projectName != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "apartmentNumber" field.
  String? _apartmentNumber;
  String get apartmentNumber => _apartmentNumber ?? '';
  set apartmentNumber(String? val) => _apartmentNumber = val;

  bool hasApartmentNumber() => _apartmentNumber != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  set size(String? val) => _size = val;

  bool hasSize() => _size != null;

  // "demand" field.
  String? _demand;
  String get demand => _demand ?? '';
  set demand(String? val) => _demand = val;

  bool hasDemand() => _demand != null;

  // "offer" field.
  String? _offer;
  String get offer => _offer ?? '';
  set offer(String? val) => _offer = val;

  bool hasOffer() => _offer != null;

  // "interested" field.
  String? _interested;
  String get interested => _interested ?? '';
  set interested(String? val) => _interested = val;

  bool hasInterested() => _interested != null;

  // "cheque" field.
  String? _cheque;
  String get cheque => _cheque ?? '';
  set cheque(String? val) => _cheque = val;

  bool hasCheque() => _cheque != null;

  // "floor" field.
  String? _floor;
  String get floor => _floor ?? '';
  set floor(String? val) => _floor = val;

  bool hasFloor() => _floor != null;

  // "tower" field.
  String? _tower;
  String get tower => _tower ?? '';
  set tower(String? val) => _tower = val;

  bool hasTower() => _tower != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  set contact(String? val) => _contact = val;

  bool hasContact() => _contact != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  set createdBy(String? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "rentDemandMonthly" field.
  String? _rentDemandMonthly;
  String get rentDemandMonthly => _rentDemandMonthly ?? '';
  set rentDemandMonthly(String? val) => _rentDemandMonthly = val;

  bool hasRentDemandMonthly() => _rentDemandMonthly != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static ItemFlowStruct fromMap(Map<String, dynamic> data) => ItemFlowStruct(
        projectName: data['projectName'] as String?,
        location: data['location'] as String?,
        apartmentNumber: data['apartmentNumber'] as String?,
        size: data['size'] as String?,
        demand: data['demand'] as String?,
        offer: data['offer'] as String?,
        interested: data['interested'] as String?,
        cheque: data['cheque'] as String?,
        floor: data['floor'] as String?,
        tower: data['tower'] as String?,
        remarks: data['remarks'] as String?,
        name: data['name'] as String?,
        contact: data['contact'] as String?,
        createdBy: data['createdBy'] as String?,
        rentDemandMonthly: data['rentDemandMonthly'] as String?,
        id: castToType<int>(data['id']),
      );

  static ItemFlowStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItemFlowStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'projectName': _projectName,
        'location': _location,
        'apartmentNumber': _apartmentNumber,
        'size': _size,
        'demand': _demand,
        'offer': _offer,
        'interested': _interested,
        'cheque': _cheque,
        'floor': _floor,
        'tower': _tower,
        'remarks': _remarks,
        'name': _name,
        'contact': _contact,
        'createdBy': _createdBy,
        'rentDemandMonthly': _rentDemandMonthly,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'projectName': serializeParam(
          _projectName,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'apartmentNumber': serializeParam(
          _apartmentNumber,
          ParamType.String,
        ),
        'size': serializeParam(
          _size,
          ParamType.String,
        ),
        'demand': serializeParam(
          _demand,
          ParamType.String,
        ),
        'offer': serializeParam(
          _offer,
          ParamType.String,
        ),
        'interested': serializeParam(
          _interested,
          ParamType.String,
        ),
        'cheque': serializeParam(
          _cheque,
          ParamType.String,
        ),
        'floor': serializeParam(
          _floor,
          ParamType.String,
        ),
        'tower': serializeParam(
          _tower,
          ParamType.String,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'contact': serializeParam(
          _contact,
          ParamType.String,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.String,
        ),
        'rentDemandMonthly': serializeParam(
          _rentDemandMonthly,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static ItemFlowStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemFlowStruct(
        projectName: deserializeParam(
          data['projectName'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        apartmentNumber: deserializeParam(
          data['apartmentNumber'],
          ParamType.String,
          false,
        ),
        size: deserializeParam(
          data['size'],
          ParamType.String,
          false,
        ),
        demand: deserializeParam(
          data['demand'],
          ParamType.String,
          false,
        ),
        offer: deserializeParam(
          data['offer'],
          ParamType.String,
          false,
        ),
        interested: deserializeParam(
          data['interested'],
          ParamType.String,
          false,
        ),
        cheque: deserializeParam(
          data['cheque'],
          ParamType.String,
          false,
        ),
        floor: deserializeParam(
          data['floor'],
          ParamType.String,
          false,
        ),
        tower: deserializeParam(
          data['tower'],
          ParamType.String,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        contact: deserializeParam(
          data['contact'],
          ParamType.String,
          false,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.String,
          false,
        ),
        rentDemandMonthly: deserializeParam(
          data['rentDemandMonthly'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ItemFlowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemFlowStruct &&
        projectName == other.projectName &&
        location == other.location &&
        apartmentNumber == other.apartmentNumber &&
        size == other.size &&
        demand == other.demand &&
        offer == other.offer &&
        interested == other.interested &&
        cheque == other.cheque &&
        floor == other.floor &&
        tower == other.tower &&
        remarks == other.remarks &&
        name == other.name &&
        contact == other.contact &&
        createdBy == other.createdBy &&
        rentDemandMonthly == other.rentDemandMonthly &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([
        projectName,
        location,
        apartmentNumber,
        size,
        demand,
        offer,
        interested,
        cheque,
        floor,
        tower,
        remarks,
        name,
        contact,
        createdBy,
        rentDemandMonthly,
        id
      ]);
}

ItemFlowStruct createItemFlowStruct({
  String? projectName,
  String? location,
  String? apartmentNumber,
  String? size,
  String? demand,
  String? offer,
  String? interested,
  String? cheque,
  String? floor,
  String? tower,
  String? remarks,
  String? name,
  String? contact,
  String? createdBy,
  String? rentDemandMonthly,
  int? id,
}) =>
    ItemFlowStruct(
      projectName: projectName,
      location: location,
      apartmentNumber: apartmentNumber,
      size: size,
      demand: demand,
      offer: offer,
      interested: interested,
      cheque: cheque,
      floor: floor,
      tower: tower,
      remarks: remarks,
      name: name,
      contact: contact,
      createdBy: createdBy,
      rentDemandMonthly: rentDemandMonthly,
      id: id,
    );
