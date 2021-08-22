import '../route.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CalcBloc _calcBloc;

  @override
  void initState() {
 _calcBloc=BlocProvider.of<CalcBloc>(context);
 _calcBloc.add(InitializeEvent());
    super.initState();
  }

  @override
  void dispose() {
    _calcBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Icon(Icons.calculate_outlined,size: 40,),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CalcBloc,CalcStates>(
                builder: (context,state){
      return  Card(
        child: Container
        (
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 110,
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Flexible(
            child: Container(
              child:
                Text(
                    (state is InitializeState)?"0":state.props[0] as String,
                  style: textStyle1(),overflow: TextOverflow.fade,textDirection: TextDirection.rtl,softWrap: false,maxLines: 1,),

            ),
          ),
        Text(
          (state is InitializeState)?"":state.props[1] as String,
        style: textStyle2(),),
        ],

        ),
        ),
        elevation: 10,
        shape:
        RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)),
        );
                }
              ),
              Divider(height: 20),
              Card(
                  elevation: 10,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child:  GridView(
                      padding: const EdgeInsets.all(10.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5
                      ),
                      shrinkWrap: true,
                      children: [
                        functionButton((){},text: ""),
                        functionButton(()=>_calcBloc.add(EqualsEvent()), text: "="),
                        functionButton(()=>_calcBloc.add(ClearEvent()), text: "C"),
                        functionButton(()=>_calcBloc.add(RemoveEvent()), iconData: Icons.dangerous),
                        numberButton(()=>_calcBloc.add(AddCharEvent("7")), "7"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("8")), "8"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("9")), "9"),
                        functionButton(()=>_calcBloc.add(AddCharEvent("+")),text: "+"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("4")), "4"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("5")), "5"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("6")), "6"),
                        functionButton(()=>_calcBloc.add(AddCharEvent("-")), text: "-"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("1")), "1"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("2")), "2"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("3")), "3"),
                        functionButton(()=>_calcBloc.add(AddCharEvent("*")), text: "x"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("00")), "00"),
                        numberButton(()=>_calcBloc.add(AddCharEvent("0")), "0"),
                        numberButton(()=>_calcBloc.add(AddCharEvent(".")), "."),
                        functionButton(()=>_calcBloc.add(AddCharEvent("/")), text: "/"),


                      ],
                    ),
                  )
            ],
    ),
        ),
      );
 
  }
}