# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250618.0.174047"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.174047/kopia-20250618.0.174047-macOS-x64.tar.gz"
    sha256 "b374676f857f29ccdd51eb39146a574f4ce0df85c1ec470cc376105d87d199ef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.174047/kopia-20250618.0.174047-macOS-arm64.tar.gz"
    sha256 "a4839163944ba0c71c128ad2dfb3bdd31dddd86992b3159c5991362a2d81c302"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.174047/kopia-20250618.0.174047-linux-x64.tar.gz"
    sha256 "7623e5920cf00282befd6b53e66cc18b168aa0204b7ffa75ab2b6d0e2d963ccd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.174047/kopia-20250618.0.174047-linux-arm.tar.gz"
    sha256 "5147a4f18645e35824423c6897a61f8a219b3ff29788c66460d920a266a79275"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250618.0.174047/kopia-20250618.0.174047-linux-arm64.tar.gz"
    sha256 "75d1720f1d7b0ae0c9293cc5d9e3a89852a96bef56abe58db9450f739c3683c3"
  end

  def install
    bin.install "kopia"
  end
end
