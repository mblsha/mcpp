require 'formula'

class McppMblsha < Formula
  homepage 'https://github.com/mblsha/'
  head "https://github.com/mblsha/mcpp.git"
  url 'https://github.com/mblsha/mcpp/archive/v2.7.2-mblsha.tar.gz'
  sha1 '161ad053074fdb3f3a369e91089314405eee6e9f'

  def install
    ENV['MACOSX_DEPLOYMENT_TARGET'] = '10.6'
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
