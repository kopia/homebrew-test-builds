# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211017.0.94644"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.94644/kopia-20211017.0.94644-macOS-x64.tar.gz"
    sha256 "022353c7e5153b1a2c16d27eca2a76e1a6c00d6d1e62b8911c6db64e45833f3d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.94644/kopia-20211017.0.94644-macOS-arm64.tar.gz"
    sha256 "d49a5b9d69f3b95e2c863aeeb14095b93879cb233b02157b7868c57b95d5c4c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.94644/kopia-20211017.0.94644-linux-x64.tar.gz"
    sha256 "c2d4d69aba72ca893487f038f8edf07812225d9c4866162739505d979ba73e69"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.94644/kopia-20211017.0.94644-linux-arm.tar.gz"
    sha256 "422eec9d53dbd6811446c3d6942f8f0b331defc65bfeb19691253def3f4227eb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.94644/kopia-20211017.0.94644-linux-arm64.tar.gz"
    sha256 "ae450f3ea1f4263fdc5012b422bad3f73e5e293f57e3a4a7c854c7e4f7d285b0"
  end

  def install
    bin.install "kopia"
  end
end
