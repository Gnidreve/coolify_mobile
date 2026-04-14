import 'database_form_page.dart';

class KeyDbDatabasePage extends DatabaseFormPage {
  const KeyDbDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.keydb);
}
