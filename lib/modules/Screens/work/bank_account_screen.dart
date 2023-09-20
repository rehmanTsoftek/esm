import 'package:esm/Models/worker/bank_model.dart';
import 'package:esm/Models/worker/paypal_model.dart';
import 'package:esm/resources/Widgets/ToolbarImage.dart';
import 'package:esm/resources/Widgets/sized_boxes.dart';
import 'package:esm/resources/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

import '../../../resources/Widgets/app_text.dart';
import '../../../resources/utils/Constants.dart';
import '../../../resources/utils/app_colors.dart';
import '../../../resources/widgets/dialogs/create_event_dialog.dart';

class BankAccountScreen extends StatefulWidget {
  const BankAccountScreen({super.key});

  @override
  State<BankAccountScreen> createState() => _BankAccountScreenState();
}

class _BankAccountScreenState extends State<BankAccountScreen> {
  TextEditingController searchController = TextEditingController();
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolbarImage(
        appBar: AppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppGradiantButton(
                  width: 150,
                  onTap: () {
                    if (select == false) {
                      setState(() {
                        select = false;
                      });
                    } else {
                      setState(() {
                        select = false;
                      });
                    }
                  },
                  btnText: 'Bank Account',
                ),
                const SizeBoxWidth16(),
                AppBorderButton(
                  width: 150,
                  onTap: () {
                    if (select == false) {
                      setState(() {
                        select = true;
                      });
                    } else {
                      setState(() {
                        select = true;
                      });
                    }
                  },
                  btnText: 'Paypal Account',
                ),
              ],
            ),
            const SizeBoxHeight16(),
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
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CreateEventDialog(
                          liveOnTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                                context, '/AddBankAccountScreen');
                          },
                          recordedOnTap: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                                context, '/AddPaypalAccountScreen');
                          },
                          dialogTitle: 'Add Account',
                          btnTextOne: 'Bank Account',
                          btnTextTwo: 'Paypal Account',
                        );
                      },
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.bluecolor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: AppText(
                        'Add',
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizeBoxWidth8(),
              ],
            ),
            const SizeBoxHeight16(),
            select == false ?Expanded(
              child: ListView.separated(
                itemCount: BankModel.bankList.length,
                itemBuilder: (context, index) {
                  BankModel bank = BankModel.bankList[index];
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: AppColors.greyBgColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Bank Name:'),
                              AppText(
                                bank.bankName,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Bank IBAN:'),
                              AppText(
                                bank.bankIBAN,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Bank Holder Name:'),
                              AppText(
                                bank.bankHolderName,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Country: '),
                              AppText(
                                bank.country,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Routing Number: '),
                              AppText(
                                bank.routingNumber,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Address: '),
                              AppText(
                                bank.address,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizeBoxHeight16();
                },
              ),
            ):Expanded(
              child: ListView.separated(
                itemCount: PaypalModel.paypalList.length,
                itemBuilder: (context, index) {
                  PaypalModel paypal = PaypalModel.paypalList[index];
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: AppColors.greyBgColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Bank Name:'),
                              AppText(
                                paypal.bankName,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Bank IBAN:'),
                              AppText(
                                paypal.bankIBAN,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Bank Holder Name:'),
                              AppText(
                                paypal.bankHolderName,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Country: '),
                              AppText(
                                paypal.country,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Routing Number: '),
                              AppText(
                                paypal.routingNumber,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AppText('Address: '),
                              AppText(
                                paypal.address,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
                          const SizeBoxHeight8(),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizeBoxHeight16();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
