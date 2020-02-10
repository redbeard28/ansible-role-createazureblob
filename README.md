ANSIBLE-ROLE-CREATEAZUREBLOB
============================

Ansible role create azure blob. It create at the same time a storage container if not exist.


## Howto use this role?
This role need to be include in a playbook. 

Call this **Galaxy** role  like this:

````bash
ansible-galaxy install -r requirements.yml 
````

Inside requirements.yml
````yaml
- src: redbeard28.createazureblob
````

More info => [Ansible Docs](https://docs.ansible.com/ansible-container/roles/access.html)

## Requirements

 * Ansible 2.9+


Role Variables
--------------

```yaml
---
blob_file_path: "/tmp"
blob_file: "myfile"
blob_container_name: "container{{ blob_file }}"
# Check Mime-types on https://developer.mozilla.org/fr/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Complete_list_of_MIME_types
blob_content_type: "application/x-tar"

################## AZURE PARTS #####################################
azure_subscription_id: "{{ vault_azure_subscription_id }}"
azure_client_id: "{{ vault_azure_client_id }}"
azure_client_secret: "{{ vault_azure_client_secret }}"
azure_tenant_id: "{{ vault_azure_tenant_id }}"
azure_resource_group: "{{ vault_azure_resource_group }}"
azure_storage_account_name: "{{ vault_azure_storage_account_name }}"

```

Dependencies
------------

- src: redbeard28.pip3
- src: redbeard28.python3_apt
- src: redbeard28.pyazuremodules

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: all
      roles:
         - { role: redbeard28.createazureblob, tags: mytags }


Molecule testing framework
--------------------------

You can use molecule to test this role.
```bash
image=debian tag="buster" molecule converge 
image=debian tag="buster" molecule verify 
```

Author Information
------------------

Jeremie CUADRADO[¹](mailto:info@redbeard-consulting.fr) from Redbeard-Consulting
