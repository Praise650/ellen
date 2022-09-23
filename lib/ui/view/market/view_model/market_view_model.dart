import 'package:stacked/stacked.dart';

class MarketViewModel extends BaseViewModel {
  List<Coin> crptoCoins = [
    Coin(coinName: 'Bitcoin', imageUrl: 'imageUrl', rate: 0.80, coinValue: 432112),
    Coin(coinName: 'Ethereum', imageUrl: 'imageUrl', rate: 1.14, coinValue: 32600),
    Coin(coinName: 'Chainlink', imageUrl: 'imageUrl', rate: 3.03, coinValue: 161),
    Coin(coinName: 'Polygon', imageUrl: 'imageUrl', rate: 2.46, coinValue: 15.4),
    Coin(coinName: 'Polygon', imageUrl: 'imageUrl', rate: 2.46, coinValue: 15.4),
    Coin(coinName: 'Polkadot', imageUrl: 'imageUrl', rate: 4.80, coinValue: 207),
    Coin(coinName: 'Polkadot', imageUrl: 'imageUrl', rate: 4.80, coinValue: 207),
  ];
}

class Coin {
  String coinName;
  String imageUrl;
  double coinValue;
  double rate;

  Coin({
    required this.coinName,
    required this.imageUrl,
    required this.rate,
    required this.coinValue,
  });
}
