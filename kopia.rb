# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231221.0.163958"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.163958/kopia-20231221.0.163958-macOS-x64.tar.gz"
    sha256 "bfcdfe674e66a55e31f75050999e8af697ad42b00ebfda416202d310ce542c79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.163958/kopia-20231221.0.163958-macOS-arm64.tar.gz"
    sha256 "eb59910d429f4ec646c1d82831814c633a242c03e860bd726e372ea5f1c31246"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.163958/kopia-20231221.0.163958-linux-x64.tar.gz"
    sha256 "8f6ddb577ecfe0e3fb679b5349f752b474a41065fa47217def7b55cadd481c90"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.163958/kopia-20231221.0.163958-linux-arm.tar.gz"
    sha256 "82d4a7d70695fea9abac25091ab361fb56d84d4a80857717fa0f95c7a6d12548"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231221.0.163958/kopia-20231221.0.163958-linux-arm64.tar.gz"
    sha256 "68e86d5d56c77baa1e157c43c808b990f88b383633069cea945ea2fd78d8c7ad"
  end

  def install
    bin.install "kopia"
  end
end
