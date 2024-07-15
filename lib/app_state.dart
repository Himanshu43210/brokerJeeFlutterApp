import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _token = await secureStorage.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    secureStorage.setString('ff_token', value);
  }

  void deleteToken() {
    secureStorage.delete(key: 'ff_token');
  }

  String _role = '';
  String get role => _role;
  set role(String value) {
    _role = value;
  }

  String _id = '';
  String get id => _id;
  set id(String value) {
    _id = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _name = '';
  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  String _companyName = '';
  String get companyName => _companyName;
  set companyName(String value) {
    _companyName = value;
  }

  String _companyAddress = '';
  String get companyAddress => _companyAddress;
  set companyAddress(String value) {
    _companyAddress = value;
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String value) {
    _userId = value;
  }

  String _buttonState = '';
  String get buttonState => _buttonState;
  set buttonState(String value) {
    _buttonState = value;
  }

  List<String> _dropdownOptions = [];
  List<String> get dropdownOptions => _dropdownOptions;
  set dropdownOptions(List<String> value) {
    _dropdownOptions = value;
  }

  void addToDropdownOptions(String value) {
    dropdownOptions.add(value);
  }

  void removeFromDropdownOptions(String value) {
    dropdownOptions.remove(value);
  }

  void removeAtIndexFromDropdownOptions(int index) {
    dropdownOptions.removeAt(index);
  }

  void updateDropdownOptionsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    dropdownOptions[index] = updateFn(_dropdownOptions[index]);
  }

  void insertAtIndexInDropdownOptions(int index, String value) {
    dropdownOptions.insert(index, value);
  }

  String _selectedOptions = '';
  String get selectedOptions => _selectedOptions;
  set selectedOptions(String value) {
    _selectedOptions = value;
  }

  String _dropdownID = '';
  String get dropdownID => _dropdownID;
  set dropdownID(String value) {
    _dropdownID = value;
  }

  String _selectedCategory = '';
  String get selectedCategory => _selectedCategory;
  set selectedCategory(String value) {
    _selectedCategory = value;
  }

  List<String> _projectName = [];
  List<String> get projectName => _projectName;
  set projectName(List<String> value) {
    _projectName = value;
  }

  void addToProjectName(String value) {
    projectName.add(value);
  }

  void removeFromProjectName(String value) {
    projectName.remove(value);
  }

  void removeAtIndexFromProjectName(int index) {
    projectName.removeAt(index);
  }

  void updateProjectNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    projectName[index] = updateFn(_projectName[index]);
  }

  void insertAtIndexInProjectName(int index, String value) {
    projectName.insert(index, value);
  }

  List<String> _location = [];
  List<String> get location => _location;
  set location(List<String> value) {
    _location = value;
  }

  void addToLocation(String value) {
    location.add(value);
  }

  void removeFromLocation(String value) {
    location.remove(value);
  }

  void removeAtIndexFromLocation(int index) {
    location.removeAt(index);
  }

  void updateLocationAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    location[index] = updateFn(_location[index]);
  }

  void insertAtIndexInLocation(int index, String value) {
    location.insert(index, value);
  }

  String _selectedSubCategory = '';
  String get selectedSubCategory => _selectedSubCategory;
  set selectedSubCategory(String value) {
    _selectedSubCategory = value;
  }

  List<String> _apartmentNumber = [];
  List<String> get apartmentNumber => _apartmentNumber;
  set apartmentNumber(List<String> value) {
    _apartmentNumber = value;
  }

  void addToApartmentNumber(String value) {
    apartmentNumber.add(value);
  }

  void removeFromApartmentNumber(String value) {
    apartmentNumber.remove(value);
  }

  void removeAtIndexFromApartmentNumber(int index) {
    apartmentNumber.removeAt(index);
  }

  void updateApartmentNumberAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    apartmentNumber[index] = updateFn(_apartmentNumber[index]);
  }

  void insertAtIndexInApartmentNumber(int index, String value) {
    apartmentNumber.insert(index, value);
  }

  List<dynamic> _sample = [];
  List<dynamic> get sample => _sample;
  set sample(List<dynamic> value) {
    _sample = value;
  }

  void addToSample(dynamic value) {
    sample.add(value);
  }

  void removeFromSample(dynamic value) {
    sample.remove(value);
  }

  void removeAtIndexFromSample(int index) {
    sample.removeAt(index);
  }

  void updateSampleAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    sample[index] = updateFn(_sample[index]);
  }

  void insertAtIndexInSample(int index, dynamic value) {
    sample.insert(index, value);
  }

  List<String> _categoryList = [];
  List<String> get categoryList => _categoryList;
  set categoryList(List<String> value) {
    _categoryList = value;
  }

  void addToCategoryList(String value) {
    categoryList.add(value);
  }

  void removeFromCategoryList(String value) {
    categoryList.remove(value);
  }

  void removeAtIndexFromCategoryList(int index) {
    categoryList.removeAt(index);
  }

  void updateCategoryListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    categoryList[index] = updateFn(_categoryList[index]);
  }

  void insertAtIndexInCategoryList(int index, String value) {
    categoryList.insert(index, value);
  }

  List<String> _commercialSubCategory = [];
  List<String> get commercialSubCategory => _commercialSubCategory;
  set commercialSubCategory(List<String> value) {
    _commercialSubCategory = value;
  }

  void addToCommercialSubCategory(String value) {
    commercialSubCategory.add(value);
  }

  void removeFromCommercialSubCategory(String value) {
    commercialSubCategory.remove(value);
  }

  void removeAtIndexFromCommercialSubCategory(int index) {
    commercialSubCategory.removeAt(index);
  }

  void updateCommercialSubCategoryAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    commercialSubCategory[index] = updateFn(_commercialSubCategory[index]);
  }

  void insertAtIndexInCommercialSubCategory(int index, String value) {
    commercialSubCategory.insert(index, value);
  }

  List<String> _InstitutionalSubCategory = [];
  List<String> get InstitutionalSubCategory => _InstitutionalSubCategory;
  set InstitutionalSubCategory(List<String> value) {
    _InstitutionalSubCategory = value;
  }

  void addToInstitutionalSubCategory(String value) {
    InstitutionalSubCategory.add(value);
  }

  void removeFromInstitutionalSubCategory(String value) {
    InstitutionalSubCategory.remove(value);
  }

  void removeAtIndexFromInstitutionalSubCategory(int index) {
    InstitutionalSubCategory.removeAt(index);
  }

  void updateInstitutionalSubCategoryAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    InstitutionalSubCategory[index] =
        updateFn(_InstitutionalSubCategory[index]);
  }

  void insertAtIndexInInstitutionalSubCategory(int index, String value) {
    InstitutionalSubCategory.insert(index, value);
  }

  List<String> _landSubCategory = [];
  List<String> get landSubCategory => _landSubCategory;
  set landSubCategory(List<String> value) {
    _landSubCategory = value;
  }

  void addToLandSubCategory(String value) {
    landSubCategory.add(value);
  }

  void removeFromLandSubCategory(String value) {
    landSubCategory.remove(value);
  }

  void removeAtIndexFromLandSubCategory(int index) {
    landSubCategory.removeAt(index);
  }

  void updateLandSubCategoryAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    landSubCategory[index] = updateFn(_landSubCategory[index]);
  }

  void insertAtIndexInLandSubCategory(int index, String value) {
    landSubCategory.insert(index, value);
  }

  List<String> _plotNumber = [];
  List<String> get plotNumber => _plotNumber;
  set plotNumber(List<String> value) {
    _plotNumber = value;
  }

  void addToPlotNumber(String value) {
    plotNumber.add(value);
  }

  void removeFromPlotNumber(String value) {
    plotNumber.remove(value);
  }

  void removeAtIndexFromPlotNumber(int index) {
    plotNumber.removeAt(index);
  }

  void updatePlotNumberAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    plotNumber[index] = updateFn(_plotNumber[index]);
  }

  void insertAtIndexInPlotNumber(int index, String value) {
    plotNumber.insert(index, value);
  }

  List<String> _flatNumber = [];
  List<String> get flatNumber => _flatNumber;
  set flatNumber(List<String> value) {
    _flatNumber = value;
  }

  void addToFlatNumber(String value) {
    flatNumber.add(value);
  }

  void removeFromFlatNumber(String value) {
    flatNumber.remove(value);
  }

  void removeAtIndexFromFlatNumber(int index) {
    flatNumber.removeAt(index);
  }

  void updateFlatNumberAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    flatNumber[index] = updateFn(_flatNumber[index]);
  }

  void insertAtIndexInFlatNumber(int index, String value) {
    flatNumber.insert(index, value);
  }

  List<String> _size = [];
  List<String> get size => _size;
  set size(List<String> value) {
    _size = value;
  }

  void addToSize(String value) {
    size.add(value);
  }

  void removeFromSize(String value) {
    size.remove(value);
  }

  void removeAtIndexFromSize(int index) {
    size.removeAt(index);
  }

  void updateSizeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    size[index] = updateFn(_size[index]);
  }

  void insertAtIndexInSize(int index, String value) {
    size.insert(index, value);
  }

  List<String> _village = [];
  List<String> get village => _village;
  set village(List<String> value) {
    _village = value;
  }

  void addToVillage(String value) {
    village.add(value);
  }

  void removeFromVillage(String value) {
    village.remove(value);
  }

  void removeAtIndexFromVillage(int index) {
    village.removeAt(index);
  }

  void updateVillageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    village[index] = updateFn(_village[index]);
  }

  void insertAtIndexInVillage(int index, String value) {
    village.insert(index, value);
  }

  List<String> _teshil = [];
  List<String> get teshil => _teshil;
  set teshil(List<String> value) {
    _teshil = value;
  }

  void addToTeshil(String value) {
    teshil.add(value);
  }

  void removeFromTeshil(String value) {
    teshil.remove(value);
  }

  void removeAtIndexFromTeshil(int index) {
    teshil.removeAt(index);
  }

  void updateTeshilAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    teshil[index] = updateFn(_teshil[index]);
  }

  void insertAtIndexInTeshil(int index, String value) {
    teshil.insert(index, value);
  }

  List<String> _societyName = [];
  List<String> get societyName => _societyName;
  set societyName(List<String> value) {
    _societyName = value;
  }

  void addToSocietyName(String value) {
    societyName.add(value);
  }

  void removeFromSocietyName(String value) {
    societyName.remove(value);
  }

  void removeAtIndexFromSocietyName(int index) {
    societyName.removeAt(index);
  }

  void updateSocietyNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    societyName[index] = updateFn(_societyName[index]);
  }

  void insertAtIndexInSocietyName(int index, String value) {
    societyName.insert(index, value);
  }

  List<String> _selectedProjectName = [];
  List<String> get selectedProjectName => _selectedProjectName;
  set selectedProjectName(List<String> value) {
    _selectedProjectName = value;
  }

  void addToSelectedProjectName(String value) {
    selectedProjectName.add(value);
  }

  void removeFromSelectedProjectName(String value) {
    selectedProjectName.remove(value);
  }

  void removeAtIndexFromSelectedProjectName(int index) {
    selectedProjectName.removeAt(index);
  }

  void updateSelectedProjectNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedProjectName[index] = updateFn(_selectedProjectName[index]);
  }

  void insertAtIndexInSelectedProjectName(int index, String value) {
    selectedProjectName.insert(index, value);
  }

  List<String> _chequelist = [];
  List<String> get chequelist => _chequelist;
  set chequelist(List<String> value) {
    _chequelist = value;
  }

  void addToChequelist(String value) {
    chequelist.add(value);
  }

  void removeFromChequelist(String value) {
    chequelist.remove(value);
  }

  void removeAtIndexFromChequelist(int index) {
    chequelist.removeAt(index);
  }

  void updateChequelistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chequelist[index] = updateFn(_chequelist[index]);
  }

  void insertAtIndexInChequelist(int index, String value) {
    chequelist.insert(index, value);
  }

  List<String> _floorlist = [];
  List<String> get floorlist => _floorlist;
  set floorlist(List<String> value) {
    _floorlist = value;
  }

  void addToFloorlist(String value) {
    floorlist.add(value);
  }

  void removeFromFloorlist(String value) {
    floorlist.remove(value);
  }

  void removeAtIndexFromFloorlist(int index) {
    floorlist.removeAt(index);
  }

  void updateFloorlistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    floorlist[index] = updateFn(_floorlist[index]);
  }

  void insertAtIndexInFloorlist(int index, String value) {
    floorlist.insert(index, value);
  }

  List<String> _builtuplist = [];
  List<String> get builtuplist => _builtuplist;
  set builtuplist(List<String> value) {
    _builtuplist = value;
  }

  void addToBuiltuplist(String value) {
    builtuplist.add(value);
  }

  void removeFromBuiltuplist(String value) {
    builtuplist.remove(value);
  }

  void removeAtIndexFromBuiltuplist(int index) {
    builtuplist.removeAt(index);
  }

  void updateBuiltuplistAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    builtuplist[index] = updateFn(_builtuplist[index]);
  }

  void insertAtIndexInBuiltuplist(int index, String value) {
    builtuplist.insert(index, value);
  }

  List<String> _queryFormList = [];
  List<String> get queryFormList => _queryFormList;
  set queryFormList(List<String> value) {
    _queryFormList = value;
  }

  void addToQueryFormList(String value) {
    queryFormList.add(value);
  }

  void removeFromQueryFormList(String value) {
    queryFormList.remove(value);
  }

  void removeAtIndexFromQueryFormList(int index) {
    queryFormList.removeAt(index);
  }

  void updateQueryFormListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    queryFormList[index] = updateFn(_queryFormList[index]);
  }

  void insertAtIndexInQueryFormList(int index, String value) {
    queryFormList.insert(index, value);
  }

  List<String> _interestedList = [];
  List<String> get interestedList => _interestedList;
  set interestedList(List<String> value) {
    _interestedList = value;
  }

  void addToInterestedList(String value) {
    interestedList.add(value);
  }

  void removeFromInterestedList(String value) {
    interestedList.remove(value);
  }

  void removeAtIndexFromInterestedList(int index) {
    interestedList.removeAt(index);
  }

  void updateInterestedListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    interestedList[index] = updateFn(_interestedList[index]);
  }

  void insertAtIndexInInterestedList(int index, String value) {
    interestedList.insert(index, value);
  }

  List<String> _fileList = [];
  List<String> get fileList => _fileList;
  set fileList(List<String> value) {
    _fileList = value;
  }

  void addToFileList(String value) {
    fileList.add(value);
  }

  void removeFromFileList(String value) {
    fileList.remove(value);
  }

  void removeAtIndexFromFileList(int index) {
    fileList.removeAt(index);
  }

  void updateFileListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    fileList[index] = updateFn(_fileList[index]);
  }

  void insertAtIndexInFileList(int index, String value) {
    fileList.insert(index, value);
  }

  List<String> _statusList = [];
  List<String> get statusList => _statusList;
  set statusList(List<String> value) {
    _statusList = value;
  }

  void addToStatusList(String value) {
    statusList.add(value);
  }

  void removeFromStatusList(String value) {
    statusList.remove(value);
  }

  void removeAtIndexFromStatusList(int index) {
    statusList.removeAt(index);
  }

  void updateStatusListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    statusList[index] = updateFn(_statusList[index]);
  }

  void insertAtIndexInStatusList(int index, String value) {
    statusList.insert(index, value);
  }

  List<String> _usersName = [];
  List<String> get usersName => _usersName;
  set usersName(List<String> value) {
    _usersName = value;
  }

  void addToUsersName(String value) {
    usersName.add(value);
  }

  void removeFromUsersName(String value) {
    usersName.remove(value);
  }

  void removeAtIndexFromUsersName(int index) {
    usersName.removeAt(index);
  }

  void updateUsersNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    usersName[index] = updateFn(_usersName[index]);
  }

  void insertAtIndexInUsersName(int index, String value) {
    usersName.insert(index, value);
  }

  List<String> _usersId = [];
  List<String> get usersId => _usersId;
  set usersId(List<String> value) {
    _usersId = value;
  }

  void addToUsersId(String value) {
    usersId.add(value);
  }

  void removeFromUsersId(String value) {
    usersId.remove(value);
  }

  void removeAtIndexFromUsersId(int index) {
    usersId.removeAt(index);
  }

  void updateUsersIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    usersId[index] = updateFn(_usersId[index]);
  }

  void insertAtIndexInUsersId(int index, String value) {
    usersId.insert(index, value);
  }

  UserStruct _table = UserStruct.fromSerializableMap(jsonDecode('{}'));
  UserStruct get table => _table;
  set table(UserStruct value) {
    _table = value;
  }

  void updateTableStruct(Function(UserStruct) updateFn) {
    updateFn(_table);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
