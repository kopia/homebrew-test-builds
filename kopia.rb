# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260608.0.232607"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260608.0.232607/kopia-20260608.0.232607-macOS-x64.tar.gz"
    sha256 "b794f73fce1262cdfd98015af156191c19a6d313c9812a71feafd518e9cdd78a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260608.0.232607/kopia-20260608.0.232607-macOS-arm64.tar.gz"
    sha256 "dd1c85eb2bd10c4068a8d39f38763d7ea359d8dc5565607d323f0c886b411060"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260608.0.232607/kopia-20260608.0.232607-linux-x64.tar.gz"
    sha256 "a4de841064c77f0adb74aafe67bc0bb1e3167930edd7e2904817085df80a30ba"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260608.0.232607/kopia-20260608.0.232607-linux-arm.tar.gz"
    sha256 "15784ece46a98ac2c25c50a112db29061d1bdd63db8194a35b70395bcb8a863f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260608.0.232607/kopia-20260608.0.232607-linux-arm64.tar.gz"
    sha256 "90ba4ba98fd11fb7bba87108c2b131a1986270ce39c4e0c91ffea7135191c576"
  end

  def install
    bin.install "kopia"
  end
end
