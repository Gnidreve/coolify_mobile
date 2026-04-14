import 'database_form_page.dart';

class MariaDbDatabasePage extends DatabaseFormPage {
  const MariaDbDatabasePage({
    super.key,
    required super.context,
    super.databaseUuid,
  }) : super(serviceType: DatabaseServiceType.mariadb);
}
