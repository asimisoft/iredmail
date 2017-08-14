USE vmail;

-- Add your first domain
INSERT INTO domain (domain, transport, settings, created)
            VALUES ('asimisoft.com', 'dovecot', 'default_user_quota:1024;', NOW());

-- Add your first normal user
INSERT INTO mailbox (username,
                     password,
                     name,
                     maildir,
                     quota,
                     domain,
                     isadmin,
                     isglobaladmin,
                     created)
             VALUES ('postmaster@asimisoft.com',
                     '{SSHA512}mlWk1c5gLx2ReHn1kw3G5yzc4LiP0IM1s4iSigtpAi436p8dzXCJ3D/9B4gn/z2RWZPvT48/o+aMdXOts5LYT0Fj+kmqGNyQ',
                     'postmaster',
                     'asimisoft.com/p/o/s/postmaster/',
                     1024,
                     'asimisoft.com',
                     1,
                     1,
                     NOW());

INSERT INTO alias (address, goto, domain, created)
           VALUES ('postmaster@asimisoft.com', 'postmaster@asimisoft.com', 'asimisoft.com', NOW());

-- Mark first mail user as global admin
INSERT INTO domain_admins (username, domain, created)
                   VALUES ('postmaster@asimisoft.com', 'ALL', NOW());
