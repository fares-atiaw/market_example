/// status_code : 200
/// success : true
/// data : [{"ProductsTypeID":"1","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-1346192177.png","ProductsTypeNameArabic":"موبايل","ProductsTypeNameAbri":"טלפון\nנייד","ProductsTypeNameEnglish":"Mobile\nPhone","ProductsTypeNameRussian":"Мобильный\nтелефон","ProductsTypeStatus":"Active","LoadInHomePage":"YES","ProductsTypeDiscription":"Mobile","lastUpdated":"2021-11-08\n17:22:40","CreatedAtProductsTyps":"2021-09-30\n14:42:32"},{"ProductsTypeID":"3","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-1875575973.png","ProductsTypeNameArabic":"اطفال","ProductsTypeNameAbri":"ילדים","ProductsTypeNameEnglish":"children","ProductsTypeNameRussian":"Дети","ProductsTypeStatus":"Active","LoadInHomePage":"YES","ProductsTypeDiscription":"Baby\nSmile goog","lastUpdated":"2021-11-08 19:37:55","CreatedAtProductsTyps":"2021-10-06\n18:47:13"},{"ProductsTypeID":"7","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-560310240.png","ProductsTypeNameArabic":"صالون","ProductsTypeNameAbri":"סָלוֹן","ProductsTypeNameEnglish":"Saloooon","ProductsTypeNameRussian":"салон","ProductsTypeStatus":"Active","LoadInHomePage":"YES","ProductsTypeDiscription":"قسم\nجميل","lastUpdated":"2021-11-08 17:21:33","CreatedAtProductsTyps":"2021-10-07\n17:27:43"},{"ProductsTypeID":"9","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-1453128745.png","ProductsTypeNameArabic":"ملابس","ProductsTypeNameAbri":"בגדים","ProductsTypeNameEnglish":"Clothes\n","ProductsTypeNameRussian":"Одежда","ProductsTypeStatus":"Active","LoadInHomePage":"YES","ProductsTypeDiscription":"good\nclothes","lastUpdated":"2021-11-08 17:20:54","CreatedAtProductsTyps":"2021-10-10\n18:34:29"},{"ProductsTypeID":"11","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-1650051621.png","ProductsTypeNameArabic":"عطور","ProductsTypeNameAbri":"נִיחוֹחַ","ProductsTypeNameEnglish":"perfume","ProductsTypeNameRussian":"Духи","ProductsTypeStatus":"Active","LoadInHomePage":"YES","ProductsTypeDiscription":"افضل\nانواع العطور","lastUpdated":"2021-11-08\n19:19:02","CreatedAtProductsTyps":"2021-10-16\n02:10:44"},{"ProductsTypeID":"12","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/-377410.png","ProductsTypeNameArabic":"لاب\nتوب","ProductsTypeNameAbri":"מחשב\nנייד","ProductsTypeNameEnglish":"Labtop","ProductsTypeNameRussian":"ноутбук","ProductsTypeStatus":"Active","LoadInHomePage":"NO","ProductsTypeDiscription":"احدث\nانواع اللاب توب","lastUpdated":"2021-11-08\n20:13:04","CreatedAtProductsTyps":"2021-11-08\n20:13:04"},{"ProductsTypeID":"13","ProductsTypeImage":"https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/-203842.png","ProductsTypeNameArabic":"اثاث","ProductsTypeNameAbri":"רְהִיטִים","ProductsTypeNameEnglish":"Furniture","ProductsTypeNameRussian":"мебель","ProductsTypeStatus":"Active","LoadInHomePage":"YES","ProductsTypeDiscription":"جميع\nمنتجات الاثاث\nالعالمية ","lastUpdated":"2021-11-09\n18:57:30","CreatedAtProductsTyps":"2021-11-09 18:54:40"}]
/// message : "Products Typs Loaded Sucssesfully"

class CategoriesResponse {
  int? statusCode;
  bool? success;
  List<Data>? data;
  String? message;

  CategoriesResponse({
      this.statusCode, 
      this.success, 
      this.data, 
      this.message,});

  CategoriesResponse.fromJson(dynamic json) {
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

/// ProductsTypeID : "1"
/// ProductsTypeImage : "https://sae-marketing.com/NOON/DashboardSOUQAdmin/template/demo_2/CategoryImage/w-1346192177.png"
/// ProductsTypeNameArabic : "موبايل"
/// ProductsTypeNameAbri : "טלפון\nנייד"
/// ProductsTypeNameEnglish : "Mobile\nPhone"
/// ProductsTypeNameRussian : "Мобильный\nтелефон"
/// ProductsTypeStatus : "Active"
/// LoadInHomePage : "YES"
/// ProductsTypeDiscription : "Mobile"
/// lastUpdated : "2021-11-08\n17:22:40"
/// CreatedAtProductsTyps : "2021-09-30\n14:42:32"

class Data {
  String? productsTypeID;
  String? productsTypeImage;
  String? productsTypeNameArabic;
  String? productsTypeNameAbri;
  String? productsTypeNameEnglish;
  String? productsTypeNameRussian;
  String? productsTypeStatus;
  String? loadInHomePage;
  String? productsTypeDiscription;
  String? lastUpdated;
  String? createdAtProductsTyps;

  Data({
      this.productsTypeID, 
      this.productsTypeImage, 
      this.productsTypeNameArabic, 
      this.productsTypeNameAbri, 
      this.productsTypeNameEnglish, 
      this.productsTypeNameRussian, 
      this.productsTypeStatus, 
      this.loadInHomePage, 
      this.productsTypeDiscription, 
      this.lastUpdated, 
      this.createdAtProductsTyps,});

  Data.fromJson(dynamic json) {
    productsTypeID = json['ProductsTypeID'];
    productsTypeImage = json['ProductsTypeImage'];
    productsTypeNameArabic = json['ProductsTypeNameArabic'];
    productsTypeNameAbri = json['ProductsTypeNameAbri'];
    productsTypeNameEnglish = json['ProductsTypeNameEnglish'];
    productsTypeNameRussian = json['ProductsTypeNameRussian'];
    productsTypeStatus = json['ProductsTypeStatus'];
    loadInHomePage = json['LoadInHomePage'];
    productsTypeDiscription = json['ProductsTypeDiscription'];
    lastUpdated = json['lastUpdated'];
    createdAtProductsTyps = json['CreatedAtProductsTyps'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ProductsTypeID'] = productsTypeID;
    map['ProductsTypeImage'] = productsTypeImage;
    map['ProductsTypeNameArabic'] = productsTypeNameArabic;
    map['ProductsTypeNameAbri'] = productsTypeNameAbri;
    map['ProductsTypeNameEnglish'] = productsTypeNameEnglish;
    map['ProductsTypeNameRussian'] = productsTypeNameRussian;
    map['ProductsTypeStatus'] = productsTypeStatus;
    map['LoadInHomePage'] = loadInHomePage;
    map['ProductsTypeDiscription'] = productsTypeDiscription;
    map['lastUpdated'] = lastUpdated;
    map['CreatedAtProductsTyps'] = createdAtProductsTyps;
    return map;
  }

}