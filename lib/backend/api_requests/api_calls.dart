import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Brokerjee Group Code

class BrokerjeeGroup {
  static String getBaseUrl() => 'https://trainright.fit';
  static Map<String, String> headers = {};
  static TrashLeadsCall trashLeadsCall = TrashLeadsCall();
  static CrmDeleteCustomerCall crmDeleteCustomerCall = CrmDeleteCustomerCall();
  static AppartmentCall appartmentCall = AppartmentCall();
  static RegisterCall registerCall = RegisterCall();
  static GetCustomerDetailsCrmCall getCustomerDetailsCrmCall =
      GetCustomerDetailsCrmCall();
  static LoginCall loginCall = LoginCall();
  static ForgetPasswordCall forgetPasswordCall = ForgetPasswordCall();
  static UpdateProfileApiCall updateProfileApiCall = UpdateProfileApiCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static GetNotificationCall getNotificationCall = GetNotificationCall();
  static SearchLeadLocationCall searchLeadLocationCall =
      SearchLeadLocationCall();
  static SearchLeadPlotNumberCall searchLeadPlotNumberCall =
      SearchLeadPlotNumberCall();
  static GetLeadsForPlotCall getLeadsForPlotCall = GetLeadsForPlotCall();
  static GetAuthorityCall getAuthorityCall = GetAuthorityCall();
  static EditAuthorityInfoCall editAuthorityInfoCall = EditAuthorityInfoCall();
  static GetMapImageCall getMapImageCall = GetMapImageCall();
  static EditLeadsCall editLeadsCall = EditLeadsCall();
  static LeadsAuthorityOtherCategoryCall leadsAuthorityOtherCategoryCall =
      LeadsAuthorityOtherCategoryCall();
  static FavouriteLeadsCall favouriteLeadsCall = FavouriteLeadsCall();
  static LeadsToCustomerCall leadsToCustomerCall = LeadsToCustomerCall();
  static GetCustomerCall getCustomerCall = GetCustomerCall();
  static DeleteLeadsCall deleteLeadsCall = DeleteLeadsCall();
  static MyFavLeadsCall myFavLeadsCall = MyFavLeadsCall();
  static GetMyleadsCall getMyleadsCall = GetMyleadsCall();
  static InsertLeadPlotCall insertLeadPlotCall = InsertLeadPlotCall();
  static InsertLeadOtherCatCall insertLeadOtherCatCall =
      InsertLeadOtherCatCall();
  static InsertLeadFloorCall insertLeadFloorCall = InsertLeadFloorCall();
  static GetPropertyDetailsCall getPropertyDetailsCall =
      GetPropertyDetailsCall();
  static CreateMapCall createMapCall = CreateMapCall();
  static CreatePropertyCall createPropertyCall = CreatePropertyCall();
  static TrashLeadRestoreCall trashLeadRestoreCall = TrashLeadRestoreCall();
  static CrmAddCustomerCall crmAddCustomerCall = CrmAddCustomerCall();
  static CrmGetCustomerCall crmGetCustomerCall = CrmGetCustomerCall();
  static CrmUpdateCustomerDeatailsCall crmUpdateCustomerDeatailsCall =
      CrmUpdateCustomerDeatailsCall();
  static CrmGetAllocatedLeadsCall crmGetAllocatedLeadsCall =
      CrmGetAllocatedLeadsCall();
  static CrmWorkHistoryCall crmWorkHistoryCall = CrmWorkHistoryCall();
  static CrmGetCommentsCall crmGetCommentsCall = CrmGetCommentsCall();
  static CrmAddWorkHistoryCall crmAddWorkHistoryCall = CrmAddWorkHistoryCall();
  static CrmAddCommentsCall crmAddCommentsCall = CrmAddCommentsCall();
  static CrmDeleteWorkHistoryOrCommentsCall crmDeleteWorkHistoryOrCommentsCall =
      CrmDeleteWorkHistoryOrCommentsCall();
  static CrmUpdateWorkFlowCall crmUpdateWorkFlowCall = CrmUpdateWorkFlowCall();
  static CrmUpdateCommentsCall crmUpdateCommentsCall = CrmUpdateCommentsCall();
  static CrmRemoveAllocatedLeadsCall crmRemoveAllocatedLeadsCall =
      CrmRemoveAllocatedLeadsCall();
  static MapsUploadLocationOrAuthorityCall mapsUploadLocationOrAuthorityCall =
      MapsUploadLocationOrAuthorityCall();
  static MapsDeleteLocationCall mapsDeleteLocationCall =
      MapsDeleteLocationCall();
  static MapsUploadPrevNextByBulkCall mapsUploadPrevNextByBulkCall =
      MapsUploadPrevNextByBulkCall();
  static MlGetAllPropertyCall mlGetAllPropertyCall = MlGetAllPropertyCall();
  static MlCreatePropertiesCall mlCreatePropertiesCall =
      MlCreatePropertiesCall();
  static MlDeletePropertyCall mlDeletePropertyCall = MlDeletePropertyCall();
  static MlUpdatePropertyCall mlUpdatePropertyCall = MlUpdatePropertyCall();
  static MyLeadsGetUserListCall myLeadsGetUserListCall =
      MyLeadsGetUserListCall();
  static MyLeadsPropertyListCall myLeadsPropertyListCall =
      MyLeadsPropertyListCall();
  static MyLeadsCustomerDetailsCall myLeadsCustomerDetailsCall =
      MyLeadsCustomerDetailsCall();
  static SearchUserPlanDetailsCall searchUserPlanDetailsCall =
      SearchUserPlanDetailsCall();
  static SearchUserListCall searchUserListCall = SearchUserListCall();
  static SeachUserCall seachUserCall = SeachUserCall();
  static SearchUserAddSalesPersonProertyDealerCall
      searchUserAddSalesPersonProertyDealerCall =
      SearchUserAddSalesPersonProertyDealerCall();
  static BuUploadBulkDataCall buUploadBulkDataCall = BuUploadBulkDataCall();
  static BuDeletePropertiesDataCall buDeletePropertiesDataCall =
      BuDeletePropertiesDataCall();
  static BuUpdatePlotCall buUpdatePlotCall = BuUpdatePlotCall();
  static BuUpdateFlatCall buUpdateFlatCall = BuUpdateFlatCall();
  static OtpVerifyCall otpVerifyCall = OtpVerifyCall();
  static MySubUserCall mySubUserCall = MySubUserCall();
  static GetUserListCall getUserListCall = GetUserListCall();
  static GetAllPlanCall getAllPlanCall = GetAllPlanCall();
  static GetMasterDataCall getMasterDataCall = GetMasterDataCall();
  static GetDelaersNameCall getDelaersNameCall = GetDelaersNameCall();
  static SearchLeadLocationSubCall searchLeadLocationSubCall =
      SearchLeadLocationSubCall();
  static GetOwnerDetailCall getOwnerDetailCall = GetOwnerDetailCall();

  static final interceptors = [
    newApiKeyInterceptor(),
  ];
}

class TrashLeadsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'trashLeads',
        apiUrl: '${baseUrl}/leads/findTrashLeads',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmDeleteCustomerCall {
  Future<ApiCallResponse> call({
    String? selectedId = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmDeleteCustomer',
        apiUrl: '${baseUrl}/api/v2/customer/deleteById?id=${selectedId}',
        callType: ApiCallType.PUT,
        headers: {},
        params: {},
        bodyType: BodyType.NONE,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class AppartmentCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'appartment',
        apiUrl: '${baseUrl}/getLocationByCategory/APARTMENT',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    int? phoneNumber,
    String? companyName = '',
    String? companyAddress = '',
    String? role = '',
    String? propertyDealeremail = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'Register',
        apiUrl: '${baseUrl}/auth/register',
        callType: ApiCallType.POST,
        headers: {},
        params: {
          'name': name,
          'email': email,
          'password': password,
          'phoneNumber': phoneNumber,
          'companyName': companyAddress,
          'companyAddress': companyAddress,
          'role': role,
          'propertyDealeremail': propertyDealeremail,
        },
        bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetCustomerDetailsCrmCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getCustomerDetailsCrm',
        apiUrl: '${baseUrl}/api/v2/customer/findById?id=${customerId}',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'Login',
        apiUrl: '${baseUrl}/v1/auth/mobile/login',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._token''',
      ));
}

class ForgetPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'ForgetPassword',
        apiUrl: '${baseUrl}/auth/microservice/forgotpassword',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class UpdateProfileApiCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? phoneNumber = '',
    String? companyName = '',
    String? id = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "phoneNumber": "${phoneNumber}",
  "companyName": "${companyName}",
  "id": "${id}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'updateProfileApi',
        apiUrl: '${baseUrl}/auth/edit',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? oldPassword = '',
    String? newPassword = '',
    String? confirmPassword = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "oldPassword": "${oldPassword}",
  "newPassword": "${newPassword}",
  "confirmPassword": "${confirmPassword}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'changePassword',
        apiUrl: '${baseUrl}/auth/change-password',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetNotificationCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getNotification',
        apiUrl: '${baseUrl}/api/v2/notifications/getNotifications',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class SearchLeadLocationCall {
  Future<ApiCallResponse> call({
    String? category = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'searchLeadLocation',
        apiUrl: '${baseUrl}/getLocationByCategory/${category}',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class SearchLeadPlotNumberCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? sectorNumber = '',
    String? subCategory = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'searchLeadPlotNumber',
        apiUrl:
            '${baseUrl}/getPlotsByCategoryAndLocation?category=${category}&sectorNumber=${sectorNumber}',
        callType: ApiCallType.GET,
        headers: {},
        params: {
          'subCategory': subCategory,
        },
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetLeadsForPlotCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getLeadsForPlot',
        apiUrl: '${baseUrl}/properties/microservice',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetAuthorityCall {
  Future<ApiCallResponse> call({
    String? category = '',
    List<String>? projectNameList,
    String? location = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();
    final projectName = _serializeList(projectNameList);

    final ffApiRequestBody = '''
{
  "category": "${category}",
  "projectName": "${projectName}",
  "location": "${location}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getAuthority',
        apiUrl: '${baseUrl}/getAuthority',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class EditAuthorityInfoCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'editAuthorityInfo',
        apiUrl: '${baseUrl}/edit-authority',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetMapImageCall {
  Future<ApiCallResponse> call({
    String? category = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "category": "${category}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getMapImage',
        apiUrl: '${baseUrl}/getMaps',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class EditLeadsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'editLeads',
        apiUrl: '${baseUrl}/leads/editLeads',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class LeadsAuthorityOtherCategoryCall {
  Future<ApiCallResponse> call({
    String? category = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "category": "${category}" 
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'leadsAuthorityOtherCategory',
        apiUrl: '${baseUrl}/leads/getLeads',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class FavouriteLeadsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'favouriteLeads',
        apiUrl: '${baseUrl}/favLeads',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class LeadsToCustomerCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'leadsToCustomer',
        apiUrl: '${baseUrl}/api/v2/leads/addLeadToCrm',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetCustomerCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getCustomer',
        apiUrl: '${baseUrl}/api/v2/customer/findAll?page=0&limit=10000',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class DeleteLeadsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'deleteLeads',
        apiUrl: '${baseUrl}/deleteMany',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MyFavLeadsCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? subCategory = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'myFavLeads',
        apiUrl:
            '${baseUrl}/favLeads?category=${category}&subCategory=${subCategory}',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetMyleadsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getMyleads',
        apiUrl:
            '${baseUrl}/leads/findAllLeads?page=0&limit=10000&category=APARTMENT&subCategory=&createdById=665dd27f7fc7132db87aa721',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class InsertLeadPlotCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'insertLeadPlot',
        apiUrl: '${baseUrl}/leads/microservice',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class InsertLeadOtherCatCall {
  Future<ApiCallResponse> call({
    String? cid = '',
    String? customerName = '',
    String? customerContact = '',
    String? suid = '',
    String? salesUserName = '',
    String? salesUserContact = '',
    String? status = '',
    String? accomodation = '',
    String? comments = '',
    String? leadSource = '',
    String? salesPerson = '',
    int? demand,
    int? offer,
    String? file = '',
    String? interested = '',
    String? builtup = '',
    String? rentDemand = '',
    String? areaAvailForRent = '',
    String? areaForRent = '',
    String? builtupArea = '',
    String? plotType = '',
    String? monthlyRent = '',
    String? roi = '',
    String? cheque = '',
    String? isFav = '',
    String? apartmentNumber = '',
    String? tower = '',
    String? rent = '',
    String? floor = '',
    String? size = '',
    String? floorForSale = '',
    String? floorForRent = '',
    String? subCategory = '',
    String? subcategory1 = '',
    String? totalRooms = '',
    String? totalBeds = '',
    String? area = '',
    String? road = '',
    String? usage = '',
    String? features = '',
    String? createdBy = '',
    String? queryFrom = '',
    String? category = '',
    String? projectName = '',
    String? location = '',
    String? sectorNumber = '',
    String? basementStiltFirstDemand1 = '',
    String? basementStiltFirstOffer1 = '',
    String? basementStiltFirstRentDemand1 = '',
    String? basementDemand1 = '',
    String? basementOffer1 = '',
    String? basementRentDemand1 = '',
    String? stiltFirstDemand1 = '',
    String? stiltFirstOffer1 = '',
    String? stiltFirstRentDemand1 = '',
    String? stiltFourthWithRoofDemand1 = '',
    String? stiltFourthWithRoofOffer1 = '',
    String? stiltFourthWithRoofRentDemand1 = '',
    String? stiltSecondDemand1 = '',
    String? stiltSecondOffer1 = '',
    String? stiltSecondRentDemand1 = '',
    String? stiltThirdDemand1 = '',
    String? stiltThirdOffer1 = '',
    String? stiltThirdRentDemand1 = '',
    String? floor1 = '',
    String? stiltSecond1 = '',
    String? stiltThird1 = '',
    String? stiltFourthWithRoof1 = '',
    String? basement1 = '',
    String? basementStiltFirst1 = '',
    String? stiltFirst2 = '',
    String? stiltSecond2 = '',
    String? stiltThirdWithRoof2 = '',
    String? basement2 = '',
    String? basementStiltFirst2 = '',
    String? ground3 = '',
    String? first3 = '',
    String? secondWithRoof3 = '',
    String? basement3 = '',
    String? groundBasement3 = '',
    String? crmAllocated = '',
    String? plotNumber = '',
    String? plotSize = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'insertLeadOtherCat',
        apiUrl: '${baseUrl}/leads/insertLead',
        callType: ApiCallType.POST,
        headers: {},
        params: {
          'cid': cid,
          'customerName': customerName,
          'customerContact': customerContact,
          'suid': suid,
          'salesUserName': salesUserName,
          'salesUserContact': salesUserContact,
          'status': status,
          'accomodation': accomodation,
          'comments': comments,
          'leadSource': leadSource,
          'salesPerson': salesPerson,
          'demand': demand,
          'offer': offer,
          'file': file,
          'interested': interested,
          'builtup': builtup,
          'rentDemand': rentDemand,
          'areaAvailForRent': areaAvailForRent,
          'areaForRent': areaForRent,
          'builtupArea': builtupArea,
          'plotType': plotType,
          'monthlyRent': monthlyRent,
          'roi': roi,
          'cheque': cheque,
          'isFav': isFav,
          'apartmentNumber': apartmentNumber,
          'tower': tower,
          'rent': rent,
          'floor': floor,
          'size': size,
          'floorForSale': floorForSale,
          'floorForRent': floorForRent,
          'subCategory': subCategory,
          'subcategory': subcategory1,
          'totalRooms': totalRooms,
          'totalBeds': totalBeds,
          'area': area,
          'road': road,
          'usage': usage,
          'features': features,
          '1 Basement + Stilt + First demand': basementStiltFirstDemand1,
          '1 Basement + Stilt + First offer': basementStiltFirstOffer1,
          '1 Basement + Stilt + First rent demand':
              basementStiltFirstRentDemand1,
          '1 Basement demand': basementDemand1,
          '1 Basement offer': basementOffer1,
          '1 Basement rent demand': basementRentDemand1,
          '1 Stilt+ First demand': stiltFirstDemand1,
          '1 Stilt+ First offer': stiltFirstOffer1,
          '1 Stilt+ First rent demand': stiltFirstRentDemand1,
          '1 Stilt+ Fourth with Roof demand': stiltFourthWithRoofDemand1,
          '1 Stilt+ Fourth with Roof offer': stiltFourthWithRoofOffer1,
          '1 Stilt+ Fourth with Roof rent demand':
              stiltFourthWithRoofRentDemand1,
          '1 Stilt+ Second demand': stiltSecondDemand1,
          '1 Stilt+ Second offer': stiltSecondOffer1,
          '1 Stilt+ Second rent demand': stiltSecondRentDemand1,
          '1 Stilt+ Third demand': stiltThirdDemand1,
          '1 Stilt+ Third offer': stiltThirdOffer1,
          '1 Stilt+ Third rent demand': stiltThirdRentDemand1,
          '1 floor': floor1,
          '1 Stilt+ Second': stiltSecond1,
          '1 Stilt+ Third': stiltThird1,
          '1 Stilt+ Fourth with Roof': stiltFourthWithRoof1,
          '1 Basement': basement1,
          '1 Basement + Stilt + First': basementStiltFirst1,
          '2 Stilt+ First': stiltFirst2,
          '2 Stilt+ Second': stiltSecond2,
          '2 Stilt+ Third with Roof': stiltThirdWithRoof2,
          '2 Basement': basement2,
          '2 Basement + Stilt + First': basementStiltFirst2,
          '3 Ground': ground3,
          '3 %22First%22': first3,
          '3 Second with Roof': secondWithRoof3,
          '3 Basement': basement3,
          '3 Ground + Basement': groundBasement3,
          'createdBy': createdBy,
          'queryFrom': queryFrom,
          'category': category,
          'projectName': projectName,
          'location': location,
          'sectorNumber': sectorNumber,
          'crmAllocated': crmAllocated,
          'plotNumber': plotNumber,
          'plotSize': plotSize,
        },
        bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class InsertLeadFloorCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'insertLeadFloor',
        apiUrl: '${baseUrl}/insert/floor-leads',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetPropertyDetailsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getPropertyDetails',
        apiUrl: '${baseUrl}/propertyDetail',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CreateMapCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'createMap',
        apiUrl: '${baseUrl}/maps/create-map',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CreatePropertyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'createProperty',
        apiUrl: '${baseUrl}/property/create-property',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class TrashLeadRestoreCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'trashLeadRestore',
        apiUrl: '${baseUrl}/leads/restoreLead',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmAddCustomerCall {
  Future<ApiCallResponse> call({
    String? allocateTo = '',
    int? budget,
    String? category = '',
    String? createdBy = '',
    String? customerName = '',
    String? date = '',
    String? interested = '',
    bool? isHide,
    String? phoneNumber = '',
    String? remarks = '',
    String? role = '',
    String? status = '',
    String? subCategory = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "allocateTo": "${allocateTo}",
  "budget": "${budget}",
  "category": "${category}",
  "createdBy": "${createdBy}",
  "customerName": "${customerName}",
  "date": "${date}",
  "interested": "${interested}",
  "isHide": "${isHide}",
  "phoneNumber": "${phoneNumber}",
  "remarks": "${remarks}",
  "role": "${role}",
  "status": "${status}",
  "subCategory": "${subCategory}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmAddCustomer',
        apiUrl: '${baseUrl}/api/v2/customer/create',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmGetCustomerCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmGetCustomer',
        apiUrl:
            '${baseUrl}/api/v2/leads/findCustomerByUserId?page=0&limit=10000&userId=${id}',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmUpdateCustomerDeatailsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmUpdateCustomerDeatails',
        apiUrl: '${baseUrl}/api/v2/customer/update',
        callType: ApiCallType.PUT,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmGetAllocatedLeadsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmGetAllocatedLeads',
        apiUrl:
            '${baseUrl}/api/v2/leads/findAllAllocatedLeads?page=0&limit=10000',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmWorkHistoryCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmWorkHistory',
        apiUrl:
            '${baseUrl}/api/v2/workHistory/findAll/description?page=0&limit=20&customerId=${customerId}',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmGetCommentsCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmGetComments',
        apiUrl:
            '${baseUrl}/api/v2/workHistory/findAllCustomerAndAdminComments?page=0&limit=10&customerId=${customerId}',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmAddWorkHistoryCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmAddWorkHistory',
        apiUrl: '${baseUrl}/api/v2/workHistory/create/description',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmAddCommentsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmAddComments',
        apiUrl: '${baseUrl}/api/v2/workHistory/create/comment',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmDeleteWorkHistoryOrCommentsCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmDeleteWorkHistoryOrComments',
        apiUrl: '${baseUrl}/api/v2/workHistory/deleteById?id=\$${id}',
        callType: ApiCallType.PUT,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmUpdateWorkFlowCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmUpdateWorkFlow',
        apiUrl: '${baseUrl}/api/v2/workHistory/update/description',
        callType: ApiCallType.PUT,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmUpdateCommentsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmUpdateComments',
        apiUrl: '${baseUrl}/api/v2/workHistory/update/comment',
        callType: ApiCallType.PUT,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class CrmRemoveAllocatedLeadsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'crmRemoveAllocatedLeads',
        apiUrl: '${baseUrl}/api/v2/leads/removeLeadFromCrm',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MapsUploadLocationOrAuthorityCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mapsUploadLocationOrAuthority',
        apiUrl: '${baseUrl}/upload-manger/upload-bulk-data',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MapsDeleteLocationCall {
  Future<ApiCallResponse> call({
    String? category = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mapsDeleteLocation',
        apiUrl: '${baseUrl}/api/delete-properties/${category}',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MapsUploadPrevNextByBulkCall {
  Future<ApiCallResponse> call({
    String? category = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mapsUploadPrevNextByBulk',
        apiUrl: '${baseUrl}/${category}/updatePlotPrevNext',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MlGetAllPropertyCall {
  Future<ApiCallResponse> call({
    String? categorySelected = '',
    String? page = '1',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mlGetAllProperty',
        apiUrl:
            '${baseUrl}/api/v2/properties/getPropertyList?category=${categorySelected}&page=${page}&count=20',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MlCreatePropertiesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mlCreateProperties',
        apiUrl: '${baseUrl}/api/v2/properties/pfi',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MlDeletePropertyCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mlDeleteProperty',
        apiUrl: '${baseUrl}//api/v2/properties/deleteById?id=${id}',
        callType: ApiCallType.PUT,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MlUpdatePropertyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mlUpdateProperty',
        apiUrl: '${baseUrl}/api/v2/properties/updateProperty',
        callType: ApiCallType.PUT,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MyLeadsGetUserListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'myLeadsGetUserList',
        apiUrl: '${baseUrl}/auth/users/getUserList',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MyLeadsPropertyListCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? id = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'myLeadsPropertyList',
        apiUrl:
            '${baseUrl}/leads/findAllLeads?page=0&limit=10000&category=${category}&subCategory=&createdById=${id}',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MyLeadsCustomerDetailsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'myLeadsCustomerDetails',
        apiUrl: '${baseUrl}/api/v2/customer/findAll?page=0&limit=10000',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class SearchUserPlanDetailsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'searchUserPlanDetails',
        apiUrl: '${baseUrl}/plan/get-all-plans',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class SearchUserListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'searchUserList',
        apiUrl: '${baseUrl}/auth/get-users-list',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class SeachUserCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'seachUser',
        apiUrl: '${baseUrl}/search-user',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class SearchUserAddSalesPersonProertyDealerCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'searchUserAddSalesPersonProertyDealer',
        apiUrl: '${baseUrl}/auth/register',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class BuUploadBulkDataCall {
  Future<ApiCallResponse> call({
    String? upload = '',
    String? category = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'buUploadBulkData',
        apiUrl: '${baseUrl}/upload-manger/upload-bulk-data',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class BuDeletePropertiesDataCall {
  Future<ApiCallResponse> call({
    String? category = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'buDeletePropertiesData',
        apiUrl: '${baseUrl}/api/delete-properties/${category}',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class BuUpdatePlotCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'buUpdatePlot',
        apiUrl: '${baseUrl}/plot/updatePlotPrevNext',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class BuUpdateFlatCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'buUpdateFlat',
        apiUrl: '${baseUrl}/flat/updateFlatPrevNext',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class OtpVerifyCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? otp = '',
    String? type = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "otp": "${otp}",
  "type": "${type}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'otpVerify',
        apiUrl: '${baseUrl}/auth/verify-otp',
        callType: ApiCallType.POST,
        headers: {},
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class MySubUserCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'mySubUser',
        apiUrl: '${baseUrl}/auth/users/getSubUserList?userId=',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetUserListCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getUserList',
        apiUrl: '${baseUrl}/auth/users/getUserList',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetAllPlanCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getAllPlan',
        apiUrl: '${baseUrl}/plan/get-all-plans',
        callType: ApiCallType.GET,
        headers: {
          'Authorization':
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MmEzN2FjMzJmZTM1YzdlNGRiMjE0NiIsInJvbGUiOiJwcm9wZXJ0eURlYWxlciIsImlhdCI6MTcxOTkwOTY4OCwiZXhwIjoxNzIwMDgyNDg4fQ.EOGbZknsjqLaOVRKEYo4_a-VHzir_d8HiLhQfIe0L4Y',
        },
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetMasterDataCall {
  Future<ApiCallResponse> call({
    String? modules = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "module": "${modules}"
}''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getMasterData',
        apiUrl: '${baseUrl}/master',
        callType: ApiCallType.POST,
        headers: {
          'Authorization':
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MmEzN2FjMzJmZTM1YzdlNGRiMjE0NiIsInJvbGUiOiJwcm9wZXJ0eURlYWxlciIsImlhdCI6MTcxOTkwOTY4OCwiZXhwIjoxNzIwMDgyNDg4fQ.EOGbZknsjqLaOVRKEYo4_a-VHzir_d8HiLhQfIe0L4Y',
        },
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetDelaersNameCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getDelaersName',
        apiUrl: '${baseUrl}/leads/getDealerNames',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class SearchLeadLocationSubCall {
  Future<ApiCallResponse> call({
    String? category = '',
    String? subCategory = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'searchLeadLocationSub',
        apiUrl: '${baseUrl}/getLocationByCategory/${category}',
        callType: ApiCallType.GET,
        headers: {},
        params: {
          'subCategory': subCategory,
        },
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

class GetOwnerDetailCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = BrokerjeeGroup.getBaseUrl();

    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getOwnerDetail',
        apiUrl: '${baseUrl}/auth/user-detail/${id}',
        callType: ApiCallType.GET,
        headers: {
          'Authorization':
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MmEzN2FjMzJmZTM1YzdlNGRiMjE0NiIsInJvbGUiOiJwcm9wZXJ0eURlYWxlciIsImlhdCI6MTcxOTkwOTY4OCwiZXhwIjoxNzIwMDgyNDg4fQ.EOGbZknsjqLaOVRKEYo4_a-VHzir_d8HiLhQfIe0L4Y',
        },
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),
      BrokerjeeGroup.interceptors,
    );
  }
}

/// End Brokerjee Group Code

class TesterCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'tester',
      apiUrl: 'https://trainright.fit/leads/findTrashLeads',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MmEzN2FjMzJmZTM1YzdlNGRiMjE0NiIsInJvbGUiOiJwcm9wZXJ0eURlYWxlciIsImlhdCI6MTcxOTkwOTY4OCwiZXhwIjoxNzIwMDgyNDg4fQ.EOGbZknsjqLaOVRKEYo4_a-VHzir_d8HiLhQfIe0L4Y',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
