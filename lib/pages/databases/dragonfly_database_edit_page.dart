import 'database_form_page.dart';

class DragonflyDatabaseEditPage extends DatabaseFormPage {
  const DragonflyDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.dragonfly, databaseUuid: databaseUuid);
}
