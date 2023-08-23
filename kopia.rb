# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230823.0.53"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.53/kopia-20230823.0.53-macOS-x64.tar.gz"
    sha256 "098a096d03fb3a382db3ce440a17dc0be22d9f0d0cfd4a2f5a276c987346c302"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.53/kopia-20230823.0.53-macOS-arm64.tar.gz"
    sha256 "0e8bc57d7246ebb8d992366410d61ce7102fe56cfc6b3216fa03020e6ac875e4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.53/kopia-20230823.0.53-linux-x64.tar.gz"
    sha256 "919200fd3d033e36faa21dc592ed11d6ce363f1dcd8b67df9fbf6703cb57354e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.53/kopia-20230823.0.53-linux-arm.tar.gz"
    sha256 "2bd650152b84ca81632573aefc91f4d59795921c1d2cc02eff7868b55e6e8996"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230823.0.53/kopia-20230823.0.53-linux-arm64.tar.gz"
    sha256 "b80c1293d52d7bc2b8440f910374e53c9eb775fc4c18bae924048975af891bf8"
  end

  def install
    bin.install "kopia"
  end
end
