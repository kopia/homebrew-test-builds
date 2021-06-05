# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210605.0.90349"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.90349/kopia-20210605.0.90349-macOS-x64.tar.gz"
    sha256 "061af16cbd1123b34ccc91053eec9e70d56e6fab53c616c874c077d8c54c6647"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.90349/kopia-20210605.0.90349-macOS-arm64.tar.gz"
    sha256 "178dd6cc2d1ee45012a73fde0807071c23f2271ede2474de03aaf3b055d6e073"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.90349/kopia-20210605.0.90349-linux-x64.tar.gz"
    sha256 "eea1ff28e19f919d5de05030224b81a5e7bd061f1b834000f80b5aedcf017e78"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.90349/kopia-20210605.0.90349-linux-arm.tar.gz"
    sha256 "68734af072711c2ea2f31b933b6e8e0e089701f38f298b3cee0c785f8dff92f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210605.0.90349/kopia-20210605.0.90349-linux-arm64.tar.gz"
    sha256 "c6b4c655ad83bb1753dd9e0c51593ced15460be22e5b7b3b32e3e8db9c85fa52"
  end

  def install
    bin.install "kopia"
  end
end
