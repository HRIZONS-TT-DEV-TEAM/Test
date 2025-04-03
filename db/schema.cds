using { managed } from '@sap/cds/common';
aspect entity : managed { key ID: Integer }

entity AppCofing : entity {
    metric : Association to Metric;
    nodeId : String(255);
    managerIds : String(255);
    nodeTitle : String(255);
    nodeFirstName : String(255);
    nodeLastName : String(255);
    nodeDivision : String(255);
    nodeDepartment : String(255);
    nodeLocation : String(255);
    displayId : String(255);
    metricDefault : String(255);
    spanOfControl : String(255);
    depth : String(255);
    dateSelectorType : String(255);
    hierarchySwitch : String(255);
    expand : String(255);
    searchable : Association to Searchable;
}

entity Metric : entity {
    metricName : String(255);
    apiField : String(255);
    name : String(255);
    darken : Boolean;
    dateToAge : Boolean;
    nullColor : String(255);
    nullStroke : String(255);
    fillStyle : String(255);
    type : String(255);
    sort : Boolean;
    ignoreZero : Boolean;
    color : String(255);
    len : Integer;
    valueMap : String(255);
    colorOrdinal : String(255); // should probably be a dictionary
    yesNo : Boolean;
}

entity Searchable : entity {
    name : String(255);
    fields : String(255);
}

entity SfConfig : entity {
    id : String(255); // may cause problems with key
    startEntity : String(255);
    entityConfig : Association to EntityConfig;
    headshotConfig : Association to HeadshotConfig;
}

entity EntityConfig : entity {
    apiEntity : String(255);
    expands : String(255);
    filter : String(255);
    ![select] : String(255); // "select" is a reserved word, consider changing
    concurrency : String(255);
}

entity HeadshotConfig : entity {
    headshotDelay : String(255);
    multiphotoType : String(255);
    singlePhotoType : String(255);
    concurrency : String(255);
    preload : String(255);
    batch : String(255);
}

entity ValueMap : entity {
    properties : String(255); // should probably be a dictionary
}

