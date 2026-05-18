namespace s4a.tenant;
entity Tenants {
    key id          : UUID;
    companyName : String(100);
    subdomain   : String(50);
    status      : String(20);
}