/// status_code : 200
/// success : true
/// data : [{"ProductsID":"12","SellerID":"9","ProductsName":"سالون\nالحلوين","ProductsPrice":"1000","ProductsOfferPrice":"900","CurrencyID":"1","ProductsStatus":"HTML","ProductsDescription":"صالون\nرائع مذهب و\nجامد","ProductsWordsToSearch":"صالون صالون\nصالون","ProductsBarcode":"6887686786","ProductsTypeID":"7","SubCategoryId":"6","ProductsInsuranceCompany":"Apple","ProductsInsuranceDuration":"jsdkj","ProductsQuantity":"40","ProductsFirstImage":"https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-272183.png","ProductsSecondImage":"https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-185849.png","ProductsThirdImage":"https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-386871.png","ProductsFourthmage":"https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-157739.png","ProductsFifthImage":"https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-137889.png","DealsOfToday":"NonActive","ProductRate":"1","ProductTotalRates":"1","ProductTotalNum":"1","lastUpdated":"2021-11-08\n17:21:33","CreatedAtProducts":"2021-10-24\n01:16:26","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-560310240.png","ProductsTypeNameArabic":"صالون","ProductsTypeNameAbri":"סָלוֹן","ProductsTypeNameEnglish":"Saloooon","ProductsTypeNameRussian":"салон","ProductsTypeStatus":"Active","LoadInHomePage":"YES","ProductsTypeDiscription":"قسم\nجميل","CreatedAtProductsTyps":"2021-10-07\n17:27:43","SellerFirstName":"Mahmoud","SellerLastName":"souq","SellerEmail":"ahmed@yahoo.com","SellerPassword":"12345678","SellerCountryID":"1","SellerStoreName":"Zara","SellerCompanyLegelName":"Betary","SellerCompanyPhoneNumber":"01159050530","0":"no","1":"no"}]
/// message : "Products\nLoaded Sucssesfully"

class ProductsResponse {
  ProductsResponse({
      this.statusCode, 
      this.success, 
      this.data, 
      this.message,});

  ProductsResponse.fromJson(dynamic json) {
    statusCode = json['status_code'];
    success = json['success'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    message = json['message'];
  }
  int? statusCode;
  bool? success;
  List<Data>? data;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status_code'] = statusCode;
    map['success'] = success;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['message'] = message;
    return map;
  }

}

/// ProductsID : "12"
/// SellerID : "9"
/// ProductsName : "سالون\nالحلوين"
/// ProductsPrice : "1000"
/// ProductsOfferPrice : "900"
/// CurrencyID : "1"
/// ProductsStatus : "HTML"
/// ProductsDescription : "صالون\nرائع مذهب و\nجامد"
/// ProductsWordsToSearch : "صالون صالون\nصالون"
/// ProductsBarcode : "6887686786"
/// ProductsTypeID : "7"
/// SubCategoryId : "6"
/// ProductsInsuranceCompany : "Apple"
/// ProductsInsuranceDuration : "jsdkj"
/// ProductsQuantity : "40"
/// ProductsFirstImage : "https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-272183.png"
/// ProductsSecondImage : "https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-185849.png"
/// ProductsThirdImage : "https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-386871.png"
/// ProductsFourthmage : "https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-157739.png"
/// ProductsFifthImage : "https://sae-marketing.com/NOON/DashboardSOUQ/template/demo_2/PHOTOS/6887686786-137889.png"
/// DealsOfToday : "NonActive"
/// ProductRate : "1"
/// ProductTotalRates : "1"
/// ProductTotalNum : "1"
/// lastUpdated : "2021-11-08\n17:21:33"
/// CreatedAtProducts : "2021-10-24\n01:16:26"
/// ProductsTypeImage : "https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-560310240.png"
/// ProductsTypeNameArabic : "صالون"
/// ProductsTypeNameAbri : "סָלוֹן"
/// ProductsTypeNameEnglish : "Saloooon"
/// ProductsTypeNameRussian : "салон"
/// ProductsTypeStatus : "Active"
/// LoadInHomePage : "YES"
/// ProductsTypeDiscription : "قسم\nجميل"
/// CreatedAtProductsTyps : "2021-10-07\n17:27:43"
/// SellerFirstName : "Mahmoud"
/// SellerLastName : "souq"
/// SellerEmail : "ahmed@yahoo.com"
/// SellerPassword : "12345678"
/// SellerCountryID : "1"
/// SellerStoreName : "Zara"
/// SellerCompanyLegelName : "Betary"
/// SellerCompanyPhoneNumber : "01159050530"
/// 0 : "no"
/// 1 : "no"

class Data {
  Data({
      this.productsID, 
      this.sellerID, 
      this.productsName, 
      this.productsPrice, 
      this.productsOfferPrice, 
      this.currencyID, 
      this.productsStatus, 
      this.productsDescription, 
      this.productsWordsToSearch, 
      this.productsBarcode, 
      this.productsTypeID, 
      this.subCategoryId, 
      this.productsInsuranceCompany, 
      this.productsInsuranceDuration, 
      this.productsQuantity, 
      this.productsFirstImage, 
      this.productsSecondImage, 
      this.productsThirdImage, 
      this.productsFourthmage, 
      this.productsFifthImage, 
      this.dealsOfToday, 
      this.productRate, 
      this.productTotalRates, 
      this.productTotalNum, 
      this.lastUpdated, 
      this.createdAtProducts, 
      this.productsTypeImage, 
      this.productsTypeNameArabic, 
      this.productsTypeNameAbri, 
      this.productsTypeNameEnglish, 
      this.productsTypeNameRussian, 
      this.productsTypeStatus, 
      this.loadInHomePage, 
      this.productsTypeDiscription, 
      this.createdAtProductsTyps, 
      this.sellerFirstName, 
      this.sellerLastName, 
      this.sellerEmail, 
      this.sellerPassword, 
      this.sellerCountryID, 
      this.sellerStoreName, 
      this.sellerCompanyLegelName, 
      this.sellerCompanyPhoneNumber});

  Data.fromJson(dynamic json) {
    productsID = json['ProductsID'];
    sellerID = json['SellerID'];
    productsName = json['ProductsName'];
    productsPrice = json['ProductsPrice'];
    productsOfferPrice = json['ProductsOfferPrice'];
    currencyID = json['CurrencyID'];
    productsStatus = json['ProductsStatus'];
    productsDescription = json['ProductsDescription'];
    productsWordsToSearch = json['ProductsWordsToSearch'];
    productsBarcode = json['ProductsBarcode'];
    productsTypeID = json['ProductsTypeID'];
    subCategoryId = json['SubCategoryId'];
    productsInsuranceCompany = json['ProductsInsuranceCompany'];
    productsInsuranceDuration = json['ProductsInsuranceDuration'];
    productsQuantity = json['ProductsQuantity'];
    productsFirstImage = json['ProductsFirstImage'];
    productsSecondImage = json['ProductsSecondImage'];
    productsThirdImage = json['ProductsThirdImage'];
    productsFourthmage = json['ProductsFourthmage'];
    productsFifthImage = json['ProductsFifthImage'];
    dealsOfToday = json['DealsOfToday'];
    productRate = json['ProductRate'];
    productTotalRates = json['ProductTotalRates'];
    productTotalNum = json['ProductTotalNum'];
    lastUpdated = json['lastUpdated'];
    createdAtProducts = json['CreatedAtProducts'];
    productsTypeImage = json['ProductsTypeImage'];
    productsTypeNameArabic = json['ProductsTypeNameArabic'];
    productsTypeNameAbri = json['ProductsTypeNameAbri'];
    productsTypeNameEnglish = json['ProductsTypeNameEnglish'];
    productsTypeNameRussian = json['ProductsTypeNameRussian'];
    productsTypeStatus = json['ProductsTypeStatus'];
    loadInHomePage = json['LoadInHomePage'];
    productsTypeDiscription = json['ProductsTypeDiscription'];
    createdAtProductsTyps = json['CreatedAtProductsTyps'];
    sellerFirstName = json['SellerFirstName'];
    sellerLastName = json['SellerLastName'];
    sellerEmail = json['SellerEmail'];
    sellerPassword = json['SellerPassword'];
    sellerCountryID = json['SellerCountryID'];
    sellerStoreName = json['SellerStoreName'];
    sellerCompanyLegelName = json['SellerCompanyLegelName'];
    sellerCompanyPhoneNumber = json['SellerCompanyPhoneNumber'];
  }
  String? productsID;
  String? sellerID;
  String? productsName;
  String? productsPrice;
  String? productsOfferPrice;
  String? currencyID;
  String? productsStatus;
  String? productsDescription;
  String? productsWordsToSearch;
  String? productsBarcode;
  String? productsTypeID;
  String? subCategoryId;
  String? productsInsuranceCompany;
  String? productsInsuranceDuration;
  String? productsQuantity;
  String? productsFirstImage;
  String? productsSecondImage;
  String? productsThirdImage;
  String? productsFourthmage;
  String? productsFifthImage;
  String? dealsOfToday;
  String? productRate;
  String? productTotalRates;
  String? productTotalNum;
  String? lastUpdated;
  String? createdAtProducts;
  String? productsTypeImage;
  String? productsTypeNameArabic;
  String? productsTypeNameAbri;
  String? productsTypeNameEnglish;
  String? productsTypeNameRussian;
  String? productsTypeStatus;
  String? loadInHomePage;
  String? productsTypeDiscription;
  String? createdAtProductsTyps;
  String? sellerFirstName;
  String? sellerLastName;
  String? sellerEmail;
  String? sellerPassword;
  String? sellerCountryID;
  String? sellerStoreName;
  String? sellerCompanyLegelName;
  String? sellerCompanyPhoneNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ProductsID'] = productsID;
    map['SellerID'] = sellerID;
    map['ProductsName'] = productsName;
    map['ProductsPrice'] = productsPrice;
    map['ProductsOfferPrice'] = productsOfferPrice;
    map['CurrencyID'] = currencyID;
    map['ProductsStatus'] = productsStatus;
    map['ProductsDescription'] = productsDescription;
    map['ProductsWordsToSearch'] = productsWordsToSearch;
    map['ProductsBarcode'] = productsBarcode;
    map['ProductsTypeID'] = productsTypeID;
    map['SubCategoryId'] = subCategoryId;
    map['ProductsInsuranceCompany'] = productsInsuranceCompany;
    map['ProductsInsuranceDuration'] = productsInsuranceDuration;
    map['ProductsQuantity'] = productsQuantity;
    map['ProductsFirstImage'] = productsFirstImage;
    map['ProductsSecondImage'] = productsSecondImage;
    map['ProductsThirdImage'] = productsThirdImage;
    map['ProductsFourthmage'] = productsFourthmage;
    map['ProductsFifthImage'] = productsFifthImage;
    map['DealsOfToday'] = dealsOfToday;
    map['ProductRate'] = productRate;
    map['ProductTotalRates'] = productTotalRates;
    map['ProductTotalNum'] = productTotalNum;
    map['lastUpdated'] = lastUpdated;
    map['CreatedAtProducts'] = createdAtProducts;
    map['ProductsTypeImage'] = productsTypeImage;
    map['ProductsTypeNameArabic'] = productsTypeNameArabic;
    map['ProductsTypeNameAbri'] = productsTypeNameAbri;
    map['ProductsTypeNameEnglish'] = productsTypeNameEnglish;
    map['ProductsTypeNameRussian'] = productsTypeNameRussian;
    map['ProductsTypeStatus'] = productsTypeStatus;
    map['LoadInHomePage'] = loadInHomePage;
    map['ProductsTypeDiscription'] = productsTypeDiscription;
    map['CreatedAtProductsTyps'] = createdAtProductsTyps;
    map['SellerFirstName'] = sellerFirstName;
    map['SellerLastName'] = sellerLastName;
    map['SellerEmail'] = sellerEmail;
    map['SellerPassword'] = sellerPassword;
    map['SellerCountryID'] = sellerCountryID;
    map['SellerStoreName'] = sellerStoreName;
    map['SellerCompanyLegelName'] = sellerCompanyLegelName;
    map['SellerCompanyPhoneNumber'] = sellerCompanyPhoneNumber;
    return map;
  }

}