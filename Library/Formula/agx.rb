require 'formula'

class Agx < Formula
  url 'https://github.com/bluedynamics/agx.dev/tarball/master'

  homepage 'http://agx.me'
  sha1 '4b76638e9df49bbba4226e649c655a06534a7c43'

  depends_on 'pkg-config' => :build
  depends_on 'mscgen' => :recommended

  def install
    system "python bootstrap.py"
    system "./bin/buildout"
  end
end
