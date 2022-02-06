class FxNetworkHeader {
  static Map<String, String> create(
      {ToolNetworkRequestTyp requestType = ToolNetworkRequestTyp.get,
      String? token = ""}) {
    Map<String, String> header = {"Accept": "application/json"};

    switch (requestType) {
      case ToolNetworkRequestTyp.get:
        break;

      case ToolNetworkRequestTyp.post:
      case ToolNetworkRequestTyp.delete:
        header["Content-type"] = "application/json";
        break;

      case ToolNetworkRequestTyp.getWithAuth:
      case ToolNetworkRequestTyp.postWithAuth:
      case ToolNetworkRequestTyp.deleteWithAuth:
        header["Content-type"] = "application/json";
        header["Authorization"] = "Bearer " + token!;
        break;
    }

    return header;
  }
}

enum ToolNetworkRequestTyp {
  get,
  post,
  delete,
  getWithAuth,
  postWithAuth,
  deleteWithAuth
}
