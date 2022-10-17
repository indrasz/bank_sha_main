part of '../pages.dart';

class TopUpAmountPage extends StatefulWidget {
  const TopUpAmountPage({Key? key}) : super(key: key);

  @override
  State<TopUpAmountPage> createState() => _TopUpAmountPage();
}

class _TopUpAmountPage extends State<TopUpAmountPage> {
  final TextEditingController _amountController =
      TextEditingController(text: '0');

  addAmount(String number) {
    if (_amountController.text == '0') {
      _amountController.text = '';
    }
    setState(() {
      _amountController.text = _amountController.text + number;
    });
  }

  deleteAmount() {
    if (_amountController.text.isNotEmpty) {
      setState(() {
        _amountController.text = _amountController.text
            .substring(0, _amountController.text.length - 1);
        if (_amountController.text == '') {
          _amountController.text = '0';
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();

    _amountController.addListener(() {
      final text = _amountController.text;

      _amountController.value = _amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(
            text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  'Total Amount',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              const SizedBox(
                height: 67,
              ),
              Align(
                child: SizedBox(
                  width: 200,
                  child: TextFormField(
                    controller: _amountController,
                    cursorColor: greyColor,
                    enabled: false,
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Text(
                        'Rp',
                        style: whiteTextStyle.copyWith(
                          fontSize: 36,
                          fontWeight: medium,
                        ),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 70,
                runSpacing: 60,
                children: [
                  CustomInputButton(
                    title: '1',
                    onTap: () {
                      addAmount('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onTap: () {
                      addAmount('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onTap: () {
                      addAmount('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onTap: () {
                      addAmount('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onTap: () {
                      addAmount('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onTap: () {
                      addAmount('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onTap: () {
                      addAmount('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onTap: () {
                      addAmount('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onTap: () {
                      addAmount('9');
                    },
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    title: '0',
                    onTap: () {
                      addAmount('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deleteAmount();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 50,
                  // ),
                  CustomFilledButton(
                    title: 'Checkout Now',
                    onPressed: () {},
                  ),
                  // const SizedBox(
                  //   height: 25,
                  // ),
                  CustomTextButton(
                    title: 'Terms & Conditions',
                    onPressed: () {},
                  ),
                  // const SizedBox(
                  //   height: 40,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
