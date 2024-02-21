# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240221.0.132454"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.132454/kopia-20240221.0.132454-macOS-x64.tar.gz"
    sha256 "9964a7a942091628b3fc67a2c61caf20eb8ed43438c81e7d43a731392e854e21"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.132454/kopia-20240221.0.132454-macOS-arm64.tar.gz"
    sha256 "24237f2a890ec64a62d3f42916fe15c2b492a6d92ec0bb5165693eadadacca13"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.132454/kopia-20240221.0.132454-linux-x64.tar.gz"
    sha256 "f873f3176981f226c35ed726cce24ac808790beb9bd5d0ddad672f5faeb6ae1d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.132454/kopia-20240221.0.132454-linux-arm.tar.gz"
    sha256 "f0afad484088683bdf867d433eb01872922e455266662341fc3833747d5f3048"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240221.0.132454/kopia-20240221.0.132454-linux-arm64.tar.gz"
    sha256 "b07e9fb2878297553e8972862c8d84606bb7c9ce41b4e0593657f1ac7afe1dde"
  end

  def install
    bin.install "kopia"
  end
end
