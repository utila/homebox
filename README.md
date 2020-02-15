__Please, note this branch will receive only bug fixes and security updates. all the developments are now focused on the
[Debian Buster branch](https://github.com/progmaticltd/homebox/tree/buster-dev).__

A set of Ansible scripts to setup a secure email and personal files server. This project is for you if:

- You are interested to host your emails yourself, for privacy, security or any other reason.
- You want your server to be secure against both physical and remote intrusion.
- You want a low maintenance box that keep itself updated automatically.
- You trust the Debian community to publish security updates.

## Official documentation and user's guide

- [Stable branch](http://homebox.readthedocs.io/en/latest/)
- [Development branch](http://homebox.readthedocs.io/en/dev/)

## Mailing lists

Thanks to [Framasoft](https://framasoft.org/), two mailing lists have been created, one for general questions, suggestions and
support, and another one dedicated for development.

- General questions: https://framalistes.org/sympa/info/homebox-general
- Development: https://framalistes.org/sympa/info/homebox-dev

## Current project status

<table>
    <tr>
        <th colspan="2"></th>
        <th><a href="https://github.com/progmaticltd/homebox/tree/master">Development branch</a></th>
        <th><a href="https://github.com/progmaticltd/homebox/tree/master">Master branch</a></th>
    </tr>
    <tr>
        <td colspan="2">Syntax checking</td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-dev-basic/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-dev-basic'>
            </a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-master-basic/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-master-basic'>
            </a>
        </td>
    </tr>
    <tr>
        <td colspan="2">Documentation</td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-dev-docs/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-dev-docs'>
            </a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-master-docs/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-master-docs'>
            </a>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <a href="https://jenkins.homebox.space/downloads/">ISO image</a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-dev-isobuilder/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-dev-isobuilder'>
            </a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-master-isobuilder/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-master-isobuilder'>
            </a>
        </td>
    </tr>
    <tr>
        <td rowspan="2">
            <a href='https://github.com/progmaticltd/homebox-test/blob/master/configs/generic/micro-mixedip-01.yml'>
                Micro
            </a>
        </td>
        <td>Deployment</td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-dev-micro-deploy/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-dev-micro-deploy'>
            </a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-master-micro-deploy/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-master-micro-deploy'>
            </a>
        </td>
    </tr>
    <tr>
        <td>Testing</td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-dev-micro-test/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-dev-micro-test'>
            </a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-master-micro-test/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-master-micro-test'>
            </a>
        </td>
    </tr>
    <tr>
        <td rowspan="2">
            <a href='https://github.com/progmaticltd/homebox-test/blob/master/configs/generic/mini-mixedip-01.yml'>
                Mini
            </a>
        </td>
        <td>Deployment</td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-dev-mini-deploy/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-dev-mini-deploy'>
            </a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-master-mini-deploy/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-master-mini-deploy'>
            </a>
        </td>
    </tr>
    <tr>
        <td>Testing</td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-dev-mini-test/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-dev-mini-test'>
            </a>
        </td>
        <td>
            <a href='https://jenkins.homebox.space/job/homebox-master-mini-test/'>
                <img src='https://jenkins.homebox.space/buildStatus/icon?job=homebox-master-mini-test'>
            </a>
        </td>
    </tr>
</table>

## Current status and supported features

For a complete list of features, see the [features page](http://homebox.readthedocs.io/en/latest/features/) in the
official documentation.

### System installation and features

- Custom Debian installer generation with full disk encryption and fully automatic installation.
- Unlock the system upon boot by entering the passphrase through SSH or with a Yubikey.
- Install packages only from Debian stable (Stretch) or officially maintained repositories (rspamd).
- Automatic SSL Certificates generation with [letsencrypt](https://letsencrypt.org).
- Automatic security updates (optional).
- Centralised authentication with an LDAP users database, SSL certificate, password policies, PAM integration.
- AppArmor activated by default, profiles for all daemons.
- Automatic backup of the deployment data to replay the installation with the same data.
- Can be used at home, on a dedicated or virtual server hosted online.
- Flexible IP address support: IPv4, IPv6, IPv4+IPv4, IPv4+IPv6.
- Embedded DNS server, with CAA, DNSSEC and SSHFP (SSH fingerprint) support.
- Grade A https sites, HSTS implemented by default.

### Emails

- Postfix configuration and installation, with LDAP lookups, internationalised email aliases,
  fully SSL compliant.
- Generate DKIM keys, SPF and DMARC DNS records.
- Automatic copy of sent emails into the sent folder.
- Automatic creation of the postmaster account and special email addresses using
  [RFC 2142](https://tools.ietf.org/html/rfc2142) specifications.
- Dovecot configuration, IMAPS, POP3S, Quotas, ManageSieve, simple spam and ham learning
  by moving emails in and out the Junk folder, sieve and vacation scripts.
- Virtual folders for server search: unread messages, conversations view, all messages, flagged
  and messages labelled as "important".
- Email addresses with recipient delimiter included, e.g. john.doe+lists@dbcooper.com.
- Optional master user creation, e.g. for families with children or moderated communities.
- Server side full text search inside emails, attached documents and files and
  compressed archives, with better results than GMail.
- Detailed weekly, monthly and yearly access report per country, ISP, IP addresses, etc.
- Optional Roundcube webmail with sieve filters management, password change form, automatic identity
  creation, master account access, etc.
- Optional SOGo webmail with sieve filters management, password change form, Calendar and Address book management, GUI
  to import other account emails.
- Automatic import emails from Google Mail, Yahoo, Outlook.com or any other standard IMAP account.
- Powerful and light antispam system with [rspamd](https://rspamd.com/) and optional access to the web interface.
- Antivirus for inbound _and_ outbound emails with [clamav](https://www.clamav.net/).
- Automatic configuration for Thunderbird and Outlook using published XML and other clients with
  special DNS records ([RFC 6186](https://tools.ietf.org/html/rfc6186)).
- Automatic detection of unusual behaviour, with real time warning using XMPP and email to external address.

### Calendar and Address book

- Install and configure a CalDAV / CardDAV server, with automatic discovery ([RFC 6186](https://tools.ietf.org/html/rfc6764)).
- Groupware functionality in a web interface, with [SOGo](https://sogo.nu/).
- Recurring events, email alerts, shared address books and calendars.
- Mobile devices compatibility: Android, Apple iOS, BlackBerry 10 and Windows mobile through Microsoft ActiveSync.

### Other optional features

- Incremental backups, encrypted, on multiple destination (SFTP, S3, Samba share or USB drive), with email and Jabber
  reporting.
- Jabber server, using [ejabberd](https://www.ejabberd.im/), with LDAP authentication, direct or offline file transfer
  and optional server to server communication.
- [Tor](https://www.torproject.org/) installation out of the box with possible customisation.
- [Privoxy](https://www.privoxy.org/) easy installation, with adblock rules daily synchronisation, and optional tor
  chaining.
- Static web site skeleton configuration, with https certificates and A+ security grade by default.
- Personal backup server for each user, using borgbackup.
- [Transmission daemon](https://transmissionbt.com/), accessible over https, public or private over your LAN. Files can
  be downloaded directly with a web browser, using LDAP credentials for authentication or whitelisted IP addresses
  (e.g. LAN).
- Monitoring with [Zabbix](https://www.zabbix.com/), with email and Jabber alerts.
- Hide the SSH server with Single Packet Authorization, using [fwknop](http://www.cipherdyne.org/fwknop/).

### Development

- YAML files validation on each commit, using [travis-ci](https://travis-ci.org/progmaticltd/homebox).
- Continuous Integration using [Jenkins](https://jenkins.homebox.space).
- End to end integration tests for the majority of components.
- Playbooks to facilitate the installation or removal of development packages.
- Global debug flag to activate the debug mode of all components.
- Fully open source Ansible scripts licensed under GPLv3.
