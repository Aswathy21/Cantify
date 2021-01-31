class Menu {
  String _dishname;
  int _rate;

  Menu(this._dishname, this._rate);

  Menu.map(dynamic obj) {
    this._dishname = obj['dishname'];
    this._rate = obj['rate'];
  }

  String get dishname => _dishname;
  int get rate => _rate;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["dishname"] = _dishname;
    map["rate"] = _rate;
    return map;
  }
}
