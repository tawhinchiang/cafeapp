import 'package:cafe_app/components/bannerprinccoffe.dart';
import 'package:cafe_app/components/bottomnavigator.dart';
import 'package:cafe_app/components/containerstypecoffe.dart';
import 'package:cafe_app/components/gradientcolor.dart';
import 'package:cafe_app/pages/detalhes.dart';
import 'package:flutter/material.dart';

class SearchCoffe extends StatefulWidget {
  const SearchCoffe({super.key});

  @override
  SearchCoffeState createState() => SearchCoffeState();
}

class SearchCoffeState extends State<SearchCoffe> {
  String selectedCoffeeType = '';
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff9f9f9),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const HeaderSecondPage(),
                  Container(
                    color: const Color(0xffF3F3F3),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding:
                        const EdgeInsets.only(top: 140, left: 29, right: 29),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            spacing: 7.0,
                            runSpacing: 7.0,
                            children: [
                              buildCoffeeTypeOption('Cappuccino'),
                              buildCoffeeTypeOption('Macchiato'),
                              buildCoffeeTypeOption('Latte'),
                              buildCoffeeTypeOption('Espresso'),
                              // Adicione mais opções conforme necessário
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildCoffeeRow([
                          _buildCoffeeContainer(
                              'Cappuccino',
                              'Creamy and delicious',
                              'assets/images/leftside.png',
                              "\$4.53"),
                          _buildCoffeeContainer('Macchiato', 'Bold and smooth',
                              'assets/images/rightside.png', "\$4.53"),
                        ]),
                        const SizedBox(height: 20),
                        _buildCoffeeRow([
                          _buildCoffeeContainer('Latte', 'Silky and indulgent',
                              'assets/images/Group3150.png', "\$4.53"),
                          _buildCoffeeContainer(
                              'Espresso',
                              'Strong and aromatic',
                              'assets/images/Group3151.png',
                              "\$4.53"),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 240,
                left: 31,
                right: 29,
                child: Container(
                  width: 315,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/coffehorizont.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const BannerCoffe(),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigate(selectedIndex: selectedIndex),
      ),
    );
  }

//metodo typecoffe
  Widget buildCoffeeTypeOption(String coffeeType) {
    bool isSelected = selectedCoffeeType == coffeeType;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCoffeeType = coffeeType;
        });
        if (selectedCoffeeType == 'Macchiato') {}
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffC67C4E) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? const Color(0xffC67C4E) : Colors.grey,
            width: 2,
          ),
        ),
        child: Text(
          coffeeType,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

//metodo cofferow
  Widget _buildCoffeeRow(List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }

//coffecontainer
  Widget _buildCoffeeContainer(
    String coffeeType,
    String description,
    String imageUrl,
    String price,
  ) {
    return GestureDetector(
        onTap: () async {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Detalhes(
                        imageproduto: imageUrl,
                        nomeproduto: coffeeType,
                        descrprod: description,
                        price: price,
                      )));
        },
        child: ContainerTypeCoffe(
          coffeeType: coffeeType,
          description: description,
          imageUrl: imageUrl,
          price: price,
        ));
  }
}
