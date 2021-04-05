# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210405.0.95750"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.95750/kopia-20210405.0.95750-macOS-x64.tar.gz"
    sha256 "8d3b61c5dc88f6a683da60218f78894e1cf695db3cf897a4d6b03d188dbbcd3f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.95750/kopia-20210405.0.95750-macOS-arm64.tar.gz"
    sha256 "bc3bb27dbf59c171682564504339c02b53ba08a75a521d9dae28e5cb6bd8d644"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.95750/kopia-20210405.0.95750-linux-x64.tar.gz"
    sha256 "9d6cf2ba5315d01ceabd6e68438f6a3de10e4b7ea6195a8ff7e6c7e6fff791e1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.95750/kopia-20210405.0.95750-linux-arm.tar.gz"
    sha256 "d058f7468bede0ab15da109d64e3683ffd9d6d692d565029fa726b4f83210bec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210405.0.95750/kopia-20210405.0.95750-linux-arm64.tar.gz"
    sha256 "3101702dbe993f10c2683d64879fc171af4dee38a44c53ea645c305e18cb80e0"
  end

  def install
    bin.install "kopia"
  end
end
