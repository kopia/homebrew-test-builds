# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210901.0.170809"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170809/kopia-20210901.0.170809-macOS-x64.tar.gz"
    sha256 "dfd52d8ee841e60879bb1cd64813b04971fd83ced28b8aa679d4a71b5db997e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170809/kopia-20210901.0.170809-macOS-arm64.tar.gz"
    sha256 "ae06dda6bb341decc7da10085aac229545ff93aeafc8a3136bc02bfedff25648"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170809/kopia-20210901.0.170809-linux-x64.tar.gz"
    sha256 "3f3552a9cd75792f9802013c00b584eb782c02d089d8fe7561f0a3f8b4d2e389"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170809/kopia-20210901.0.170809-linux-arm.tar.gz"
    sha256 "d8a8dc762e35b54b1a00822485619270ad619b6d606f367424bdca0d6ba4432c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210901.0.170809/kopia-20210901.0.170809-linux-arm64.tar.gz"
    sha256 "1c1772408abccd44a4dedad14e194cb6c749682ac993bee909d60e69d5e8c674"
  end

  def install
    bin.install "kopia"
  end
end
