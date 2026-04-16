import 'database_form_page.dart';

class MongoDbDatabaseEditPage extends DatabaseFormPage {
  const MongoDbDatabaseEditPage({
    super.key,
    required super.context,
    required String databaseUuid,
  }) : super(serviceType: DatabaseServiceType.mongodb, databaseUuid: databaseUuid);
}
