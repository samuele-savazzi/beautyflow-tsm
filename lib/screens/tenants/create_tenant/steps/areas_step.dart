import 'package:flutter/material.dart';
import '../../../../config/theme.dart';
import '../../../../models/area_request.dart';
import '../../../../utils/validators.dart';
import '../widgets/area_form_dialog.dart';

/// Step 3: Aree
class AreasStep extends StatefulWidget {
  final String tenantName;
  final List<AreaRequest> initialAreas;
  final Function({required List<AreaRequest> areas}) onNext;

  const AreasStep({
    super.key,
    required this.tenantName,
    required this.initialAreas,
    required this.onNext,
  });

  @override
  State<AreasStep> createState() => _AreasStepState();
}

class _AreasStepState extends State<AreasStep> {
  final List<AreaRequest> _areas = [];
  final _formKey = GlobalKey<FormState>();
  final _areaNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialAreas.isNotEmpty) {
      _areas.addAll(widget.initialAreas);
    } else {
      // Default area principale con nome del tenant
      _areas.add(AreaRequest(name: widget.tenantName));
    }
  }

  @override
  void dispose() {
    _areaNameController.dispose();
    super.dispose();
  }

  void _addArea() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _areas.add(AreaRequest(name: _areaNameController.text.trim()));
        _areaNameController.clear();
      });
    }
  }

  void _removeArea(int index) {
    setState(() {
      _areas.removeAt(index);
    });
  }

  /// Nome e indirizzo della sede.
  ///
  /// L'indirizzo si compila gia' qui e non dopo la creazione: e' il dato che
  /// il cliente vede quando sceglie dove prenotare.
  /// Nome e indirizzo della sede.
  ///
  /// L'indirizzo si compila gia' qui e non dopo la creazione: e' il dato che
  /// il cliente vede quando sceglie dove prenotare.
  Future<void> _editArea(int index) async {
    final updated = await showDialog<AreaRequest>(
      context: context,
      builder: (_) => AreaFormDialog(area: _areas[index]),
    );
    if (updated == null || !mounted) return;
    setState(() => _areas[index] = updated);
  }

  void _handleNext() {
    if (_areas.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Aggiungi almeno un\'area'),
          backgroundColor: AppColors.error,
        ),
      );
      return;
    }

    widget.onNext(areas: _areas);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Aree del Salone', style: AppTextStyles.h3),
                const SizedBox(height: 8),
                const Text(
                  'Crea le aree operative del salone (minimo 1, massimo 10). '
                  'Tocca una sede per aggiungerne l\'indirizzo: e\' quello che '
                  'il cliente vede quando sceglie dove prenotare.',
                  style: AppTextStyles.caption,
                ),
                const SizedBox(height: 32),

                // Add Area Form
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _areaNameController,
                              decoration: const InputDecoration(
                                labelText: 'Nome Area',
                                hintText: 'es: Piano Terra, Area VIP',
                                prefixIcon: Icon(Icons.room),
                              ),
                              validator: (value) =>
                                  Validators.minLength(value, 2, 'Nome area'),
                              onFieldSubmitted: (_) => _addArea(),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton.icon(
                            onPressed: _areas.length < 10 ? _addArea : null,
                            icon: const Icon(Icons.add),
                            label: const Text('Aggiungi'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Areas List
                if (_areas.isNotEmpty) ...[
                  Row(
                    children: [
                      const Text('Aree create', style: AppTextStyles.body),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '${_areas.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _areas.length,
                    itemBuilder: (context, index) {
                      final area = _areas[index];
                      final isMainArea = index == 0;

                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: isMainArea
                                  ? AppColors.primary.withOpacity(0.1)
                                  : AppColors.background,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.room,
                              color: isMainArea
                                  ? AppColors.primary
                                  : AppColors.textSecondary,
                            ),
                          ),
                          title: Text(area.name),
                          subtitle: Text(
                            isMainArea
                                // Non e' un luogo fisico: e' il contenitore
                                // del tenant, il backend rifiuta un indirizzo.
                                ? 'Area principale (senza indirizzo)'
                                : area.hasLocation
                                ? area.shortAddress
                                : 'Indirizzo non indicato',
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (!isMainArea)
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () => _editArea(index),
                                  color: AppColors.primary,
                                ),
                              if (_areas.length > 1 && !isMainArea)
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () => _removeArea(index),
                                  color: AppColors.error,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],

                const SizedBox(height: 24),

                // Info
                if (_areas.length >= 10)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.warning.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.warning.withOpacity(0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.warning_amber, color: AppColors.warning),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Text(
                            'Limite massimo di 10 aree raggiunto',
                            style: TextStyle(color: AppColors.warning),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),

        // Next Button
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.surface,
            border: Border(top: BorderSide(color: AppColors.border, width: 1)),
          ),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _handleNext,
              icon: const Icon(Icons.arrow_forward),
              label: Text(
                'Avanti (${_areas.length} ${_areas.length == 1 ? "area" : "aree"})',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
