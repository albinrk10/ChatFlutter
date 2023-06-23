
// class YesNoModel{

//   String answer;
//   bool forced;
//   String image;

//   YesNoModel({
//     required this.answer,
//     required this.forced,
//     required this.image
//   });

//    factory YesNoModel.fromJsonMap(Map<String,dynamic>json)=>
//    YesNoModel(
//     answer: json['answer'],
//     forced: json['forced'],
//     image: json['image']
//     );

// }

// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromMap(jsonString);



import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    final String answer;
    final bool forced;
    final String image;

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toMap() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Message toMessageEntity()=>Message(
      text: answer=='yes'?'Si':'No', 
      fromwho: Fromwho.hers,
      imageUrl: image
      );
}
