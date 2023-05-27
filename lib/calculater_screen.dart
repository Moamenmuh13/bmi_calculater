import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  const BmiCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
   bool isMale = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: (TextStyle(
            fontSize: 24.0,
          )),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        isMale = true;
                      },
                      child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: isMale ? Colors.blue : Colors.grey[400]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("assets/images/male.png" ),
                          width: 90.0,
                          height: 90.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        )
                      ],
                  ),
                ),
                    )),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      isMale = false ;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:  !isMale ? Colors.pink : Colors.grey[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(image: AssetImage("assets/images/female.png") ,
                          width: 90.0, height: 90.0, color: Colors.white,),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text("Female",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        "165",
                        style: TextStyle(
                            fontSize: 48.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  Slider(
                    value: 165.0,
                    min: 100.0,
                    max: 220.0,
                    onChanged: (val) {},
                    thumbColor: Colors.red,
                    inactiveColor: Colors.white12,
                    activeColor: Colors.white,
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        ),
                        const Text(
                          "60",
                          style: TextStyle(
                              fontSize: 48.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.grey,
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                        ),
                        const Text(
                          "60",
                          style: TextStyle(
                              fontSize: 48.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.grey,
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0)),
                color: Colors.pink),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                "CALCULATOR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
