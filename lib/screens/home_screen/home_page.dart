import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riit_clone/screens/home_screen/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final getxController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'riit',
          textScaler: TextScaler.linear(1.5),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: const Color.fromRGBO(239, 68, 68, 1),
        leading: const Icon(
          Icons.alternate_email_rounded,
          color: Colors.white,
          size: 35,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      prefixIcon: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              size: 30,
                            )),
                      )),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List<Widget>.generate(
                      getxController.modalities.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, bottom: 10, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            getxController.modalities[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Selecione uma Modalidade',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaler: TextScaler.linear(1.8),
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  padding: const EdgeInsets.all(10),
                  itemCount: getxController.sports.length,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                              Expanded(
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16)),
                                    child: Obx(
                                      () => Image.asset(
                                        getxController.sports[index]['image'],
                                        fit: BoxFit.fill,
                                        width: MediaQuery.of(context).size.width -
                                            12,
                                      ),
                                    )),
                              ),
                              Obx(
                                () => Text(
                                  getxController.sports[index]["name"],
                                  textScaler: const TextScaler.linear(1.2),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
