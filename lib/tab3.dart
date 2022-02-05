/*
  Flutter 2.8.1 stable, Android Studio 2021.1 Bumblebee, Android SDK 32
  Displays vegetation anomalies (GEE) screen of Steve Observer
 */
import 'package:flutter/material.dart';
import 'dart:io'; // used in Platform.isIOS & Platform.isAndroid
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// url_launcher is used to launch the web page
import 'package:url_launcher/url_launcher.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key? key}) : super(key: key);
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  // this key makes any widget in the widget tree access the WebView state
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    // see all options in https://inappwebview.dev/docs/in-app-webview/webview-options/
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  late PullToRefreshController pullToRefreshController; // refresh display
  String url = "";
  final String urlSteveObs =
      'https://ibisa.users.earthengine.app/view/salinity-mekong';
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        // refresh WebView display
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Column(children: <Widget>[
            /*TextField(
              // URL address field
              decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
              controller: urlController,
              keyboardType: TextInputType.url,
              onSubmitted: (value) {
                var url = Uri.parse(value); // parse the input field as an URL
                if (url.scheme.isEmpty) {
                  // if it doesn't look like URL, it's a search keyword
                  url = Uri.parse("https://www.google.com/search?q=" + value);
                }
                // if it is URL, load the web page
                webViewController?.loadUrl(urlRequest: URLRequest(url: url));
              },
            ),*/
            Expanded(
              // area to display web content
              child: Stack(
                // stack widgets one above another
                children: [
                  InAppWebView(
                    // the web content is at the bottom of the stack
                    key: webViewKey,
                    // id key to keep state of webview widget across widget tree
                    initialUrlRequest:
                    // URLRequest(url: Uri.parse("https://inappwebview.dev/")),
                    URLRequest(url: Uri.parse(urlSteveObs)),
                    initialOptions: options,
                    pullToRefreshController: pullToRefreshController,
                    onWebViewCreated: (controller) {
                      // callback when webview is created
                      webViewController = controller;
                    },
                    onLoadStart: (controller, url) {
                      // callback when web page starts loading
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    androidOnPermissionRequest:
                        (controller, origin, resources) async {
                      return PermissionRequestResponse(
                          resources: resources,
                          action: PermissionRequestResponseAction.GRANT);
                    },
                    shouldOverrideUrlLoading:
                        (controller, navigationAction) async {
                      var uri = navigationAction.request.url!;

                      if (![
                        "http",
                        "https",
                        "file",
                        "chrome",
                        "data",
                        "javascript",
                        "about"
                      ].contains(uri.scheme)) {
                        if (await canLaunch(url)) {
                          // Launch the Web App
                          await launch(
                            url,
                          );
                          // and cancel the request
                          return NavigationActionPolicy.CANCEL;
                        }
                      }

                      return NavigationActionPolicy.ALLOW;
                    },
                    onLoadStop: (controller, url) async {
                      // callback when web page finishes loading
                      pullToRefreshController.endRefreshing();
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    onLoadError: (controller, url, code, message) {
                      pullToRefreshController.endRefreshing();
                    },
                    onProgressChanged: (controller, progress) {
                      if (progress == 100) {
                        pullToRefreshController.endRefreshing();
                      }
                      setState(() {
                        this.progress = progress / 100;
                        urlController.text = this.url;
                      });
                    },
                    onUpdateVisitedHistory: (controller, url, androidIsReload) {
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    onConsoleMessage: (controller, consoleMessage) {
                      print(consoleMessage);
                    },
                  ),
                  // if the web page is still loading, show progress wheel
                  //  on top of the webview display
                  progress < 1.0
                      ? LinearProgressIndicator(value: progress)
                      : Container(),
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    webViewController?.goBack();
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    webViewController?.goForward();
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.refresh),
                  onPressed: () {
                    webViewController?.reload();
                  },
                ),
              ],
            ),
          ]))/*)*/,
    );
  }
}
