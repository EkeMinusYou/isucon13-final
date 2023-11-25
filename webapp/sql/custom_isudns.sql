USE isudns;
DROP INDEX idx_name_disabled_domain ON records;
CREATE INDEX idx_name_disabled_domain ON records(name, disabled, domain_id);
DROP INDEX idx_domainmetadata_domain_id ON domainmetadata;
CREATE INDEX idx_domainmetadata_domain_id ON domainmetadata(domain_id);
