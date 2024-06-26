import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CheckAffiliatedPage extends StatelessWidget {
  const CheckAffiliatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightScreen = MediaQuery.sizeOf(context).height;
    final double widthScreen = MediaQuery.sizeOf(context).width;
    final colors = CoopartilharColors.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'É cooperado?',
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: colors.black2),
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Image(image: CooImages.cooBackgroundDetails),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: heightScreen * 0.20,
                  ),
                  child: const Image(image: CooImages.cooBrand),
                ),
                Row(
                  children: [
                    Text(
                      'Informe o seu CPF/CNPJ',
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: colors.black2),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Center(
                  child: TextFormField(
                    style: theme.textTheme.displaySmall!
                        .copyWith(color: colors.black2),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Este CPF / CNPJ não existe!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: heightScreen * 0.18),
                  child:
                      CooButton.primary(label: 'Verificar', onPressed: () {}),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
