class RadioModel {
  final String? image;
  final String? title;
  final String? subtitle;
  final String? votes;
  final String? audioUrl;

  RadioModel(this.image, this.title, this.subtitle, this.votes, this.audioUrl);

  factory RadioModel.fromJson(Map json) => RadioModel(
        json['image'],
        json['title'],
        json['subtitle'],
        json['votes']?.toString(),
        json['audio_url'],
      );
}
