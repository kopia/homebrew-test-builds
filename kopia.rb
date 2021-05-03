# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210503.0.122136"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.122136/kopia-20210503.0.122136-macOS-x64.tar.gz"
    sha256 "d161e633379b4110c8193001a2ad97dc20dc6371ae98369d335410c35ec4d456"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.122136/kopia-20210503.0.122136-macOS-arm64.tar.gz"
    sha256 "080f84827cfeafe753852314dd4e8c5349805736809957d94fa7cf9457271b91"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.122136/kopia-20210503.0.122136-linux-x64.tar.gz"
    sha256 "d698688bbfbfe837645e68911101541ffbce65663d0e17d37ac90865b956bc68"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.122136/kopia-20210503.0.122136-linux-arm.tar.gz"
    sha256 "92c46bd553af2444b01c9e203df3bdf028a3affd7619ee461392cc0f491052cd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210503.0.122136/kopia-20210503.0.122136-linux-arm64.tar.gz"
    sha256 "a3e003d0c66377d0f018aafccc9f06db83fcd5ebd72a35f06b7046b5800b9c94"
  end

  def install
    bin.install "kopia"
  end
end
