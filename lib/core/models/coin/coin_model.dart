class CoinModel {
  final String? coinName;
  final String? shortName;
  final String? imageUrl;
  double coinValue;
  double volatilityRate;

  CoinModel({
    required this.coinName,
    this.imageUrl,
    this.shortName,
    required this.volatilityRate,
    required this.coinValue,
  });

  static List<CoinModel> dummyData = [
    CoinModel(
      coinName: 'Bitcoin',
      imageUrl: 'imageUrl',
      volatilityRate: 0.80,
      coinValue: 432112,
      shortName: 'BTC',
    ),
    CoinModel(
      coinName: 'Ethereum',
      imageUrl: 'imageUrl',
      volatilityRate: 1.14,
      coinValue: 32600,
      shortName: 'ETH',
    ),
    CoinModel(
      coinName: 'Chainlink',
      imageUrl: 'imageUrl',
      volatilityRate: 3.03,
      coinValue: 161,
      shortName: 'CHL',
    ),
    CoinModel(
      coinName: 'Polygon',
      imageUrl: 'imageUrl',
      volatilityRate: 2.46,
      coinValue: 15.4,
    ),
    CoinModel(
      coinName: 'Solana',
      imageUrl: 'imageUrl',
      volatilityRate: 2.46,
      coinValue: 15.4,
      shortName: 'SOL',
    ),
    CoinModel(
      coinName: 'Polkadot',
      imageUrl: 'imageUrl',
      volatilityRate: 4.80,
      coinValue: 207,
      shortName: 'POL',
    ),
    CoinModel(
      coinName: 'Polkadot',
      imageUrl: 'imageUrl',
      volatilityRate: 4.80,
      coinValue: 207,
      shortName: 'POL',
    ),
  ];
}
