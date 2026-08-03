import 'package:flutter/material.dart';

/// Tabella che riempie la larghezza disponibile e scorre quando non ci sta.
///
/// Un `DataTable` con otto o nove colonne, messo dentro il solo scroll
/// verticale, sfonda il pannello e Flutter ci disegna sopra la banda gialla di
/// overflow. Qui invece scorre in orizzontale quando serve, ma finché lo spazio
/// c'è resta larga quanto il pannello, così su schermo grande le colonne non
/// restano ammassate a sinistra.
class WideDataTable extends StatelessWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;
  final double columnSpacing;

  /// Le righe cliccabili usano `onSelectChanged`, che di suo aggiungerebbe una
  /// colonna di spunte: qui non serve, la riga si apre e basta.
  final bool showCheckboxColumn;

  const WideDataTable({
    super.key,
    required this.columns,
    required this.rows,
    this.columnSpacing = 20,
    this.showCheckboxColumn = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: constraints.maxWidth),
          child: DataTable(
            columnSpacing: columnSpacing,
            showCheckboxColumn: showCheckboxColumn,
            headingRowHeight: 44,
            dataRowMinHeight: 44,
            dataRowMaxHeight: 60,
            columns: columns,
            rows: rows,
          ),
        ),
      ),
    );
  }
}
