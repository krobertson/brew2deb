class OpenSSL < DebianSourceFormula
  url 'http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/openssl_1.0.1c-4ubuntu8.2.dsc'
  md5 '4ef383f9233622981412a9c4c8818ae5'
  version '1.0.1c-4ubuntu8.2apcera1'

  def build
    ENV['EDITOR'] = '/bin/true'
    safe_system 'dpkg-source', '--commit', '.', 'brew2deb'
    super
  end

  def patches
    # packages retrieved from Ubuntu's openssl build for saucy on 2014-04-09
    [ 'CVE-2014-0076.patch', 'CVE-2014-0160.patch' ]
  end
end
