class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  Profile({
    this.imgUrl,
    this.name,
    this.twitter,
    this.desc,
    this.email,
  });
  static Profile generateProfile() {
    return Profile(

      imgUrl: "assets/images/avatar.png",
      name: "Alexy Prefontain",
      twitter: "@aeforia",
      desc: "3D artist from Montreal, Canada. His work is all\nabout colors, balance and emotion",
      email: "aeforia@gmail.com"
    );
  }
}
