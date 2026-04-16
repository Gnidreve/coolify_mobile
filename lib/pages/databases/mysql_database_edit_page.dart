import 'database_form_page.dart';

class MySqlDatabaseEditPage extends DatabaseFormPage {
  const MySqlDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.mysql, databaseUuid: databaseUuid);
}
