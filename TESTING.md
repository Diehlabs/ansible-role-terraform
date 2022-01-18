# Setup system for Molecule

``` bash
mkdir molecule-ansible
cd molecule-ansible
python3 -m venv molecule-venv
source molecule-venv/bin/activate
pip install 'molecule[lint,docker]'
molecule init role terraform1 --driver-name=docker
```

Add to `molecule/default/molecule.yml`:
```yaml
lint: |
  set -e
  yamllint .
  ansible-lint .
```

Update `meta.yml`

Run `molecule lint`

Run `molecule create`


requires community.docker 

pip install --upgrade pip