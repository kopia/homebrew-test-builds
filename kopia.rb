# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210715.0.113255"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.113255/kopia-20210715.0.113255-macOS-x64.tar.gz"
    sha256 "445576b795e333863d68a76bf36cfbd7f9d2eb0866449cae03a9f90b80df9ffe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.113255/kopia-20210715.0.113255-macOS-arm64.tar.gz"
    sha256 "e71285cfe2077e97925872b4f9c0c3fc1b9488f9384597b379265ac8339f44a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.113255/kopia-20210715.0.113255-linux-x64.tar.gz"
    sha256 "f9a1a1802843a9c728f3c3c3da056c2be86ce918741acfb00a96d6b05a31120e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.113255/kopia-20210715.0.113255-linux-arm.tar.gz"
    sha256 "8f43525790941d0c4e4bec24030728031bab78f1b9030b391b3c0fdbe28b6cec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210715.0.113255/kopia-20210715.0.113255-linux-arm64.tar.gz"
    sha256 "3027f1f0508b1daa114b38f39f7a4e2d10ce479160f9b266b3a6d1c12f67f97e"
  end

  def install
    bin.install "kopia"
  end
end
