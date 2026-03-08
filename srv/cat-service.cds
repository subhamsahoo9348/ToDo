using {ToDo} from '../db/schema';

service CatalogService {
    entity To_DO as projection on ToDo;
}
