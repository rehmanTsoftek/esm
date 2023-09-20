import 'package:esm/Models/services_model.dart';
import 'package:esm/modules/Screens/SellerServices/services_details_screen.dart';
import 'package:esm/resources/utils/app_colors.dart';
import 'package:esm/resources/utils/constants.dart';
import 'package:esm/resources/widgets/ToolbarImage.dart';
import 'package:esm/resources/widgets/app_text.dart';
import 'package:esm/resources/widgets/sized_boxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceMainScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ServiceListState();
  }

}
class ServiceListState extends State<ServiceMainScreen>{
  TextEditingController searchController = TextEditingController();
  List<ServicesModel>serviceList=[
    ServicesModel(serviceImgList: ["assets/images/product_dummy_img.png","assets/images/product_dummy_img.png","assets/images/image_dummy.png"], serviceName: "Dresses", servicePrice: "345", serviceDesc: "All you can buy", serviceType: "Fashoion & Shoes Access", currency: "USD",sellerEmail: "johndoe@gmail.com",sellerPhone: "+9230000"),
    ServicesModel(serviceImgList: ["assets/images/product_dummy_img.png","assets/images/image_dummy.png","assets/images/image_dummy.png"], serviceName: "Dresses", servicePrice: "345", serviceDesc: "All you can buy", serviceType: "Fashoion & Shoes Access", currency: "USD",sellerEmail: "johndoe@gmail.com",sellerPhone: "+9230000"),
    ServicesModel(serviceImgList: ["assets/images/product_dummy_img.png","assets/images/image_dummy.png","assets/images/image_dummy.png"], serviceName: "Dresses", servicePrice: "345", serviceDesc: "All you can buy", serviceType: "Fashoion & Shoes Access", currency: "USD",sellerEmail: "johndoe@gmail.com",sellerPhone: "+9230000"),
    ServicesModel(serviceImgList: ["assets/images/product_dummy_img.png","assets/images/image_dummy.png","assets/images/image_dummy.png"], serviceName: "Dresses", servicePrice: "345", serviceDesc: "All you can buy", serviceType: "Fashoion & Shoes Access", currency: "USD",sellerEmail: "johndoe@gmail.com",sellerPhone: "+9230000"),

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body:SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 1,
                          color: AppColors.bluecolor,
                        ),
                      ),
                      child: TextFormField(
                        controller: searchController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Search.....',
                          hintStyle: const TextStyle(
                            color: AppColors.greyHintColor,
                            fontSize: 15,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.bluecolor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const ImageIcon(
                                  AssetImage(Constants.search),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          prefixIcon: InkWell(
                            onTap: () {},
                            child: const ImageIcon(
                              AssetImage(Constants.worldMap),
                            ),
                          ),
                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.bluecolor,
                    borderRadius: BorderRadius.circular(37),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/AddServiceScreen');
                    },
                    child: const AppText(
                      '   Add \nProduct',
                      size: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizeBoxWidth8(),
              ],
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  itemCount: serviceList.length,
                  scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    ServicesModel shopping = serviceList[index];

                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ServicesDetailScreen(),
                            settings: RouteSettings(
                              arguments: shopping,
                            ),
                          ),
                        );


                      },
                      child: Container(
                        height: 350,
                        width: 170,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  AppText(
                                    shopping.serviceName,
                                    size: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ],
                              ),
                              Container(

                                child: Stack(
                                  children: [
                                    Container(
                                      height: 154,
                                      width: 227,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(28),
                                        image: DecorationImage(
                                          image: AssetImage(shopping.serviceImgList[1]),
                                          fit: BoxFit.cover,
                                        ),

                                      ),

                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(

                                          Constants.redBag,
                                          height: 20,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),

                              SizeBoxHeight16(),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  AppText(
                                    shopping.serviceDesc,
                                    size: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,

                                  ),
                                  SvgPicture.asset(
                                    Constants.shareBtnBlue,
                                  ),
                                ],
                              ),
                              Row(

                                children: [
                                  AppText(
                                    shopping.currency+shopping.servicePrice,
                                    size: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black,
                                  ),
                                  SizeBoxWidth16(),


                                ],
                              ),



                            ],
                          ),
                        ),
                      ),
                    );

                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  )),
            )),
          ],
        ),
      ),
    );
  }


}

