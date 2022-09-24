import 'package:url_launcher/url_launcher.dart';
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

  Future<SessionStatus> createConnection(int chainId) async {
    return await _wc.createSession(
        chainId: chainId,
        onDisplayUri: (url) async {
          uri = url;
          await launchUrl(Uri.parse(url));
        });
  }

  Future<void> send() async {}
}
