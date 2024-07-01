import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            //Expanded ile sarıldığında sayfaya enine yayılır.
            //Önemli not : Column expanded ile sardığımızda width ve height değerleri olmaması gerekir ki expanded işlevini yerine getirebilsin.
            children: [
              Expanded(
                child: Row(
                  //Expanded ile sarıldığında sayfaya boyuna yayılır.
                  children: [
                    Expanded(
                      //Containera uygulamak istediğimiz için expanded ile sardık
                      child: Container(
                        // height: 100,
                        // width: 100,
                        color: const Color.fromARGB(255, 23, 70, 153),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      //Flex kullanarak sayfadaki yüzdelik oranında oynama yapılabilir.Column ve row ile sarılmalarına bağlı olarak bu şekillendirme değişir.
                      flex: 2,
                      child: Container(
                        // height: 100,
                        // width: 100,
                        color: const Color.fromARGB(255, 23, 70, 153),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  // width: 200,
                  // height: 100,
                  color: const Color.fromARGB(255, 39, 154, 249),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        //width ve height değerleri vermezsek eğer expanded widgetı ile container sayfayı olabildiğince kaplar.
                        // width: 100,
                        // height: 100,
                        color: const Color.fromARGB(255, 165, 215, 255),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        // width: 100,
                        // height: 100,
                        color: const Color.fromARGB(255, 165, 215, 255),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
