using { s4a.tenant as my } from '../db/schema';
service TenantService {
    entity Tenants as projection on my.Tenants;
}