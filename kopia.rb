# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211016.0.101418"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211016.0.101418/kopia-20211016.0.101418-macOS-x64.tar.gz"
    sha256 "69de57670b34d923df75cb2d04aa98866d411866c967c97be305deb430da694a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211016.0.101418/kopia-20211016.0.101418-macOS-arm64.tar.gz"
    sha256 "1b3de9c82865a5d349bdbdad9dc23d634cc068cda614093b859504db5853bb74"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211016.0.101418/kopia-20211016.0.101418-linux-x64.tar.gz"
    sha256 "9eb8283de719fc4da42bb0095fa074bcc9d4bcadfc97029ffe9d7896c92453fa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211016.0.101418/kopia-20211016.0.101418-linux-arm.tar.gz"
    sha256 "c7a931b0a8400e3189067aaa74f2fa686fb6d06157886099fd39c31951a4505c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211016.0.101418/kopia-20211016.0.101418-linux-arm64.tar.gz"
    sha256 "b03c11110c5fcb369d44f6378f21d0dde07e2cafe72f969208b2cfd8428f4a9d"
  end

  def install
    bin.install "kopia"
  end
end
