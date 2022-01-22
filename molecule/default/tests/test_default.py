def test_unzip_is_installed(host):
    pkg = host.package("unzip")

    assert pkg.is_installed
