class MeGusta{
  MeGusta({this.megusta});
  bool? megusta;

}

class MegustaRepository{

  MeGusta loadMeGusta(){
    MeGusta meGusta = MeGusta(megusta: false);
    return meGusta;
  }

  MeGusta meGusta(){
    return MeGusta(megusta: true);
  }

  MeGusta noMeGusta(){
    return MeGusta(megusta: false);
  }

}