class Pasmo < Formula
  desc "Pasmo is a Z80 cross assembler, written in standard C++ that compiles easily in multiple platforms."
  homepage "http://pasmo.speccy.org/"
  url "http://pasmo.speccy.org/bin/pasmo-0.5.4.beta2.tgz"
  sha256 "2604921b14a26356264b3eec2ab835b8a467710ae166c9728eb149dfc2011c04"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    system "false"
  end
end
