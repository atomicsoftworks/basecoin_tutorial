class Asset {
  String? className;
  int id;
  String name;
  String symbol;
  String? description;
  int? maxSupply;
  double? circulatingSupply;
  double? totalSupply;
  int rank;
  double price;
  double volume24h;
  double percentChange1h;
  double percentChange24h;
  double percentChange7d;
  double percentChange30d;
  double percentChange60d;
  double percentChange90d;
  double marketCap;
  double marketCapDominance;
  double fullyDilutedMarketCap;

  Asset({
    this.className,
    required this.id,
    required this.name,
    required this.symbol,
    this.description,
    this.maxSupply,
    this.circulatingSupply,
    this.totalSupply,
    required this.rank,
    required this.price,
    required this.volume24h,
    required this.percentChange1h,
    required this.percentChange24h,
    required this.percentChange7d,
    required this.percentChange30d,
    required this.percentChange60d,
    required this.percentChange90d,
    required this.marketCap,
    required this.marketCapDominance,
    required this.fullyDilutedMarketCap,
  });

  @override
  String toString() {
    return 'Asset(className: $className, id: $id, name: $name, symbol: $symbol, description: $description, maxSupply: $maxSupply, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, rank: $rank, price: $price, volume24h: $volume24h, percentChange1h: $percentChange1h, percentChange24h: $percentChange24h, percentChange7d: $percentChange7d, percentChange30d: $percentChange30d, percentChange60d: $percentChange60d, percentChange90d: $percentChange90d, marketCap: $marketCap, marketCapDominance: $marketCapDominance, fullyDilutedMarketCap: $fullyDilutedMarketCap)';
  }

  factory Asset.fromJson(Map<String, dynamic> json) => Asset(
        className: json['__className'] as String?,
        id: json['id'] as int,
        name: json['name'] as String,
        symbol: json['symbol'] as String,
        description: json['description'] as String?,
        maxSupply: json['max_supply'] as int?,
        circulatingSupply: (json['circulating_supply'] as num?)?.toDouble(),
        totalSupply: (json['total_supply'] as num?)?.toDouble(),
        rank: json['rank'] as int,
        price: (json['price'] as num).toDouble(),
        volume24h: (json['volume_24h'] as num).toDouble(),
        percentChange1h: (json['percent_change_1h'] as num).toDouble(),
        percentChange24h: (json['percent_change_24h'] as num).toDouble(),
        percentChange7d: (json['percent_change_7d'] as num).toDouble(),
        percentChange30d: (json['percent_change_30d'] as num).toDouble(),
        percentChange60d: (json['percent_change_60d'] as num).toDouble(),
        percentChange90d: (json['percent_change_90d'] as num).toDouble(),
        marketCap: (json['market_cap'] as num).toDouble(),
        marketCapDominance: (json['market_cap_dominance'] as num).toDouble(),
        fullyDilutedMarketCap:
            (json['fully_diluted_market_cap'] as num).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        '__className': className,
        'id': id,
        'name': name,
        'symbol': symbol,
        'description': description,
        'max_supply': maxSupply,
        'circulating_supply': circulatingSupply,
        'total_supply': totalSupply,
        'rank': rank,
        'price': price,
        'volume_24h': volume24h,
        'percent_change_1h': percentChange1h,
        'percent_change_24h': percentChange24h,
        'percent_change_7d': percentChange7d,
        'percent_change_30d': percentChange30d,
        'percent_change_60d': percentChange60d,
        'percent_change_90d': percentChange90d,
        'market_cap': marketCap,
        'market_cap_dominance': marketCapDominance,
        'fully_diluted_market_cap': fullyDilutedMarketCap,
      };

  Asset copyWith({
    String? className,
    int? id,
    String? name,
    String? symbol,
    String? description,
    int? maxSupply,
    double? circulatingSupply,
    double? totalSupply,
    int? rank,
    double? price,
    double? volume24h,
    double? percentChange1h,
    double? percentChange24h,
    double? percentChange7d,
    double? percentChange30d,
    double? percentChange60d,
    double? percentChange90d,
    double? marketCap,
    double? marketCapDominance,
    double? fullyDilutedMarketCap,
  }) {
    return Asset(
      className: className ?? this.className,
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      description: description ?? this.description,
      maxSupply: maxSupply ?? this.maxSupply,
      circulatingSupply: circulatingSupply ?? this.circulatingSupply,
      totalSupply: totalSupply ?? this.totalSupply,
      rank: rank ?? this.rank,
      price: price ?? this.price,
      volume24h: volume24h ?? this.volume24h,
      percentChange1h: percentChange1h ?? this.percentChange1h,
      percentChange24h: percentChange24h ?? this.percentChange24h,
      percentChange7d: percentChange7d ?? this.percentChange7d,
      percentChange30d: percentChange30d ?? this.percentChange30d,
      percentChange60d: percentChange60d ?? this.percentChange60d,
      percentChange90d: percentChange90d ?? this.percentChange90d,
      marketCap: marketCap ?? this.marketCap,
      marketCapDominance: marketCapDominance ?? this.marketCapDominance,
      fullyDilutedMarketCap:
          fullyDilutedMarketCap ?? this.fullyDilutedMarketCap,
    );
  }
}
