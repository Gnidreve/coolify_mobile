import 'database_form_page.dart';

class MariaDbDatabaseEditPage extends DatabaseFormPage {
  const MariaDbDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.mariadb, databaseUuid: databaseUuid);
}
