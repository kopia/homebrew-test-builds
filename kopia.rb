# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240807.0.145221"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.145221/kopia-20240807.0.145221-macOS-x64.tar.gz"
    sha256 "fc9542f6e446def947d8b701740374445fcb59a22ba2a6501b9c85a7a2a7a1aa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.145221/kopia-20240807.0.145221-macOS-arm64.tar.gz"
    sha256 "4728e5418aab7768f132351ffbc756d1e57d25c04b90583ef4d220efd0011e31"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.145221/kopia-20240807.0.145221-linux-x64.tar.gz"
    sha256 "7f4beb7c0d7dc7f1a232976023dfa2ab92afc94d5eae054280f233836ca264b5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.145221/kopia-20240807.0.145221-linux-arm.tar.gz"
    sha256 "944d57da369939a81a0942ae712f364d421aa29095f5674a5242883f00571b6a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240807.0.145221/kopia-20240807.0.145221-linux-arm64.tar.gz"
    sha256 "111d0a481c18aaaa37af0e12f1294166ffd19c1775273a546ebb342aaa01874e"
  end

  def install
    bin.install "kopia"
  end
end
