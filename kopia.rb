# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230716.0.95140"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230716.0.95140/kopia-20230716.0.95140-macOS-x64.tar.gz"
    sha256 "98c4c0e80dd70083e354ca99490189428008d0cd0263dddafc8a902d18904df9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230716.0.95140/kopia-20230716.0.95140-macOS-arm64.tar.gz"
    sha256 "103e27f0d7f814d1f166382abd60ea24d2a81ae34e46311439dacf1e83934b32"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230716.0.95140/kopia-20230716.0.95140-linux-x64.tar.gz"
    sha256 "ebe0121db1ec9f9f2da636a9fc56be7dfc04f46725f27a5d91f9f586ad40e3df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230716.0.95140/kopia-20230716.0.95140-linux-arm.tar.gz"
    sha256 "2a0a5775a6b86bcd66bdf04d65065e70076d0c63f0df77ad3d9e0693c36f04d3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230716.0.95140/kopia-20230716.0.95140-linux-arm64.tar.gz"
    sha256 "cf57206f97b1b657c703c481236735f55266e99c6619306225d53a9cd6bc60cb"
  end

  def install
    bin.install "kopia"
  end
end
