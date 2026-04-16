import 'database_form_page.dart';

class KeyDbDatabaseEditPage extends DatabaseFormPage {
  const KeyDbDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.keydb, databaseUuid: databaseUuid);
}
