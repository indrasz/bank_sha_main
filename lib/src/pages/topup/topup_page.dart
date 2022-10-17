part of '../pages.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'text',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'text',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_bca.png',
            title: 'BANK BCA',
            isSelected: true,
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_bni.png',
            title: 'BANK BNI',
            isSelected: false,
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_mandiri.png',
            title: 'BANK Mandiri',
            isSelected: false,
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_ocbc.png',
            title: 'BANK OCBC',
            isSelected: false,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {},
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
