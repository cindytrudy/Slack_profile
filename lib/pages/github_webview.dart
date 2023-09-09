import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class GitHubWebView extends StatefulWidget {
  const GitHubWebView({super.key});

  @override
  State<GitHubWebView> createState() => _GitHubWebViewState();

}
class _GitHubWebViewState extends State<GitHubWebView> {
  final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse('https://github.com/cindytrudy'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: WebViewWidget(
            controller: controller,
          ),
        ),
    );

  }
}









