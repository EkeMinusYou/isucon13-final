USE isudns;
DROP INDEX idx_name_disabled_domain ON records;
CREATE INDEX idx_name_disabled_domain ON records(name, disabled, domain_id);
