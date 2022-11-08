class Tabs{

  String? tabText;
  Function()? tab1;
  Function()? tab2;

  Tabs({this.tabText, this.tab2, this.tab1,});
}

class TabsRepository{

  Tabs tab1(){
    return Tabs(
      tab1: null,
      tab2: (){},
      tabText:  "Vestibulum eu quam nec neque pellentesque efficitur id eget nisl. Proin porta est convallis lacus blandit pretium sed non enim. Maecenas lacinia non orci at aliquam.",
    );
  }

  Tabs tab2(){
    return Tabs(
      tab1: (){},
      tab2: null,
      tabText: "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese. Alps. Situated 1,578 meters above sea level, it is one of the. Larger Alpine Lakes. A gondola ride from Kandersteg, followed by a.",
    );
  }
  
}