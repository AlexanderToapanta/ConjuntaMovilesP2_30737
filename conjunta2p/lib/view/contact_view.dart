import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/contact_viewmodel.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/contact_button.dart';
import '../widgets/info_card.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    final contactVM = Provider.of<ContactViewModel>(context);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Contacto'),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const InfoCard(
              icon: Icons.contact_phone,
              title: 'Comunícate con nosotros',
              description: 'Puedes realizar una llamada o enviar un correo electrónico.',
            ),
            const SizedBox(height: 25),
            ContactButton(
              icon: Icons.call,
              text: 'Realizar llamada',
              onPressed: contactVM.makePhoneCall,
            ),
            const SizedBox(height: 15),
            ContactButton(
              icon: Icons.email,
              text: 'Enviar correo',
              onPressed: contactVM.sendEmail,
            ),
          ],
        ),
      ),
    );
  }
}