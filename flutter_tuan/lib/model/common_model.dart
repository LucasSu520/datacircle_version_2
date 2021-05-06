class CommonModel {
  final String image;
  final String title;
  final bool isOfficial;

  CommonModel(
  {this.image,this.title,this.isOfficial}
      );
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
        image: json['image'],
        title: json['title'],
        isOfficial: json['hideAppBar']
    );}

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['image'] = this.image;
      data['title'] = this.title;
      data['isOfficial'] = this.title;
      return data;
    }
  }