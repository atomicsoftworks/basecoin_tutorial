import 'asset.dart';

class Assets {
  List<Asset>? assets;

  Assets({this.assets});

  @override
  String toString() => 'Assets(assets: $assets)';

  factory Assets.fromJson(Map<String, dynamic> json) => Assets(
        assets: (json['assets'] as List<dynamic>?)
            ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'assets': assets?.map((e) => e.toJson()).toList(),
      };

  Assets copyWith({
    List<Asset>? assets,
  }) {
    return Assets(
      assets: assets ?? this.assets,
    );
  }
}
