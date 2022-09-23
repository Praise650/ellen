import 'dart:math'; //used for the random number generator

import 'package:walletconnect_dart/walletconnect_dart.dart';

class WalletProvider {
  late String? uri;
  final WalletConnect _wc = WalletConnect(
      bridge: 'https://bridge.walletconnect.org',
      clientMeta: const PeerMeta(
        name: 'Ellen',
        description:
            'Ellen is a mobile app that allows you to manage your crypto assets',
        icons: ['https://example.com/favicon.png'],
        url: 'https://example.com',
      ));

  Future<String> createConnection(int chainId) async {
    await _wc.createSession(
        chainId: chainId,
        onDisplayUri: (url) {
          uri = url;
        });
    return uri!;
  }

  Future<void> send() async {}
}
