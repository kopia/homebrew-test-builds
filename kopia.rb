# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210402.0.182104"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.182104/kopia-20210402.0.182104-macOS-x64.tar.gz"
    sha256 "ef2a7f6a94f2a78f16f8355a0092bc84fe21d0b4035ffc584773d464f4849c81"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.182104/kopia-20210402.0.182104-macOS-arm64.tar.gz"
    sha256 "11debbcb232ab6bd611682b0e81c8811a4d7ef29b768739b6a332f2487b662e1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.182104/kopia-20210402.0.182104-linux-x64.tar.gz"
    sha256 "d9b70d327826fd95f5735fd49a98d9ac940d61f3d7c6cb3deca50c5f6137eac5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.182104/kopia-20210402.0.182104-linux-arm.tar.gz"
    sha256 "88d95754c09353ca1964443f924c85e5f7aaa98b0b5d9875ab55f6be12d94c31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210402.0.182104/kopia-20210402.0.182104-linux-arm64.tar.gz"
    sha256 "21ec05953e0d27c0e4d25de2e7da02c01f1db157fabb2f71a62007e771fe6c15"
  end

  def install
    bin.install "kopia"
  end
end
