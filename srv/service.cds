using { database as my } from '../db/schema';

service ConfigService @(path:'/api/config') {
    @readonly entity app as projection on my.AppConfig {
        *
    }

    @readonly entity sf as projection on my.SfConfig {
        *
    }
}

service database {
    entity ValueMaps as projection on my.ValueMap {
        *
    };

}



// action app();
// action sf();