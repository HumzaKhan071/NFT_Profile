class Bidder {
  String? name;
  DateTime? date;
  num? price;
  Bidder({
    this.name,
    this.date,
    this.price,
  });

  static List<Bidder> generateBidder() {
    return [

      Bidder(name: "Humza",date: DateTime.now(),price: 1.53),
      Bidder(name: "Arfeen",date: DateTime.now(),price: 1.54),
      Bidder(name: "Muneeb",date: DateTime.now(),price: 1.55),
       Bidder(name: "Fawwad",date: DateTime.now(),price: 1.56),
      Bidder(name: "Ali",date: DateTime.now(),price: 1.57),
      Bidder(name: "Hammad",date: DateTime.now(),price: 1.58),
        Bidder(name: "Bilal",date: DateTime.now(),price: 1.59),
    ];
  }

   static List<Bidder> generateHistory() {
    return [

      Bidder(name: "Humza",date: DateTime.now(),price: 1.53),
      Bidder(name: "Arfeen",date: DateTime.now(),price: 1.54),
      Bidder(name: "Muneeb",date: DateTime.now(),price: 1.55),
       Bidder(name: "Fawwad",date: DateTime.now(),price: 1.56),
      Bidder(name: "Ali",date: DateTime.now(),price: 1.57),
      Bidder(name: "Hammad",date: DateTime.now(),price: 1.58),
        Bidder(name: "Bilal",date: DateTime.now(),price: 1.59),
    ];
  }
}
