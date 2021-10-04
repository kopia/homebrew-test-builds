# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211003.0.190139"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.190139/kopia-20211003.0.190139-macOS-x64.tar.gz"
    sha256 "f28f3fc621922bbe5c4d40f66f588842f72e34e9bb6c06f90721f210ec14dc95"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.190139/kopia-20211003.0.190139-macOS-arm64.tar.gz"
    sha256 "8a902ec7eb338e7ea67e7fcd64f15ed1d31b14834f72e1246058bdbfb12acd6b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.190139/kopia-20211003.0.190139-linux-x64.tar.gz"
    sha256 "9b4d814618414b9b1d829097a1bf7e49ba5bc89bef80be7f6c2795f66f0ee011"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.190139/kopia-20211003.0.190139-linux-arm.tar.gz"
    sha256 "a298b69076a96faa543fcecf134a6c2a6533491a4110ea5ae3890aba987a14c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.190139/kopia-20211003.0.190139-linux-arm64.tar.gz"
    sha256 "669dd79ee1506956528cc61d415c241f248cc02e319900a0fb42f8eeeefd564e"
  end

  def install
    bin.install "kopia"
  end
end
