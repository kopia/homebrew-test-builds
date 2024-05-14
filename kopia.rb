# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240513.0.211239"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.211239/kopia-20240513.0.211239-macOS-x64.tar.gz"
    sha256 "e97a8a51751fcf0f7894c360b62cd700b0657cd968717406040090fe7f297e90"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.211239/kopia-20240513.0.211239-macOS-arm64.tar.gz"
    sha256 "09b047cd8fb7677c96dc15a67845a062d3ee83d8bb666478fdf6f84372942c97"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.211239/kopia-20240513.0.211239-linux-x64.tar.gz"
    sha256 "ed5b0e1b3b93c6d1d1129c69e48fc23ef94d9031609f79e9666641438824137d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.211239/kopia-20240513.0.211239-linux-arm.tar.gz"
    sha256 "f1d12ba46f240b94a1330c2e3d22a542db2fdbfca5fe81a16aceaf024ed682d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240513.0.211239/kopia-20240513.0.211239-linux-arm64.tar.gz"
    sha256 "a2fc25c4fa19b43b1963062716e1978cb4fac3c4048fa195967ef11672f2b62f"
  end

  def install
    bin.install "kopia"
  end
end
