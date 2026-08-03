import 'package:flutter/material.dart';

import '../../../../config/theme.dart';
import '../../../../models/area_request.dart';
import '../../../../utils/validators.dart';
import '../../widgets/area_location_form.dart';

/// Nome e indirizzo di una sede, durante la creazione del tenant.
///
/// E' un widget con stato e non un dialog costruito al volo dentro lo step:
/// controller e GlobalKey devono vivere e morire con il dialog. Creandoli
/// nella funzione chiamante e liberandoli appena `showDialog` ritorna, il
/// dialog e' ancora in animazione di uscita e si ritrova a ricostruirsi con
/// un controller gia' distrutto.
///
/// Ritorna la sede aggiornata con `Navigator.pop`, o null se si annulla.
class AreaFormDialog extends StatefulWidget {
  final AreaRequest area;

  const AreaFormDialog({super.key, required this.area});

  @override
  State<AreaFormDialog> createState() => _AreaFormDialogState();
}

class _AreaFormDialogState extends State<AreaFormDialog> {
  final _formKey = GlobalKey<FormState>();
  final _locationKey = GlobalKey<AreaLocationFormState>();
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.area.name);
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final locationState = _locationKey.currentState;
    final error = locationState?.validate();
    if (error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error), backgroundColor: AppColors.error),
      );
      return;
    }

    final payload = locationState?.toPayload() ?? const {};
    Navigator.of(context).pop(
      AreaRequest(
        name: _nameController.text.trim(),
        street: payload['street'],
        streetNumber: payload['street_number'],
        postalCode: payload['postal_code'],
        city: payload['city'],
        province: payload['province'],
        country: payload['country'],
        latitude: payload['latitude']?.toString(),
        longitude: payload['longitude']?.toString(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Sede'),
      content: SizedBox(
        width: 560,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Nome Area',
                    hintText: 'es: Piano Terra',
                  ),
                  validator: (value) =>
                      Validators.minLength(value, 2, 'Nome area'),
                  autofocus: true,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Indirizzo (facoltativo)',
                  style: AppTextStyles.body,
                ),
                const SizedBox(height: 12),
                AreaLocationForm(
                  key: _locationKey,
                  initialLocation: widget.area.toJson(),
                  prefillCountry: !widget.area.hasLocation,
                ),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Annulla'),
        ),
        ElevatedButton(onPressed: _submit, child: const Text('Salva')),
      ],
    );
  }
}
