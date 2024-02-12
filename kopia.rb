# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240212.0.232941"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.232941/kopia-20240212.0.232941-macOS-x64.tar.gz"
    sha256 "3169c171b010ba0288175881570372b61e41ac7df4a87dd5b89c3afde27cbd2a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.232941/kopia-20240212.0.232941-macOS-arm64.tar.gz"
    sha256 "2444449a5e2c79b7847f9b4b90d9fd971b83d6889db17abb978695a6aa6790ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.232941/kopia-20240212.0.232941-linux-x64.tar.gz"
    sha256 "8862c8259cbdededf147ee9b21a1f01726c892d3ee3e60f0e76bf5e5fde7d47c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.232941/kopia-20240212.0.232941-linux-arm.tar.gz"
    sha256 "a8c0eac02222ac928f7bc1638972fb045673dc0b8f732b89c75221d7e703538d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240212.0.232941/kopia-20240212.0.232941-linux-arm64.tar.gz"
    sha256 "33543ed579f05742a97965095dd38d9f9f3a6f667c707bb06097d8f4a7d9a02d"
  end

  def install
    bin.install "kopia"
  end
end
