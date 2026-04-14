import 'database_form_page.dart';

class DragonflyDatabasePage extends DatabaseFormPage {
  const DragonflyDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.dragonfly);
}
