require 'formula'

class McppMblsha < Formula
  homepage 'https://github.com/mblsha/'
  head "https://github.com/mblsha/mcpp.git"

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-mcpplib"
    system "make install"
  end
end
