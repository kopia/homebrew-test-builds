# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230409.0.13436"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230409.0.13436/kopia-20230409.0.13436-macOS-x64.tar.gz"
    sha256 "0d9db78731f30159f18d5bf64bea287e7d283cd599ba4315821e04fad283b9ef"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230409.0.13436/kopia-20230409.0.13436-macOS-arm64.tar.gz"
    sha256 "1e8fd78319063dcdabac9abae7e300eb6b799ad115711e6fcfdf3289651659ee"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230409.0.13436/kopia-20230409.0.13436-linux-x64.tar.gz"
    sha256 "86a44f6f49ff3cbe0fbc87065545dc1ba2145511ddfb8ddac40733030ba8dee1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230409.0.13436/kopia-20230409.0.13436-linux-arm.tar.gz"
    sha256 "fe0d0383d7d10c2fb074bcc5335552c86e3383206725c9b5997ef5296d15360f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230409.0.13436/kopia-20230409.0.13436-linux-arm64.tar.gz"
    sha256 "fe9b4c8b1c119a6438842c06437902fae4c8b9891cfa414606cdb1ff7ee6469a"
  end

  def install
    bin.install "kopia"
  end
end
