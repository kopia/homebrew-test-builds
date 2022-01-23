# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220123.0.145635"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145635/kopia-20220123.0.145635-macOS-x64.tar.gz"
    sha256 "4069d4f14c93e9b8c89d341b753cbb51dc4af8749ca7c76943a1fe4bfc7d19c6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145635/kopia-20220123.0.145635-macOS-arm64.tar.gz"
    sha256 "5a086ce8e9d13389432aa71d3e9c042faa3e38430a113479a3bf330aaf529090"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145635/kopia-20220123.0.145635-linux-x64.tar.gz"
    sha256 "5befc30923305011abc56e8eb11b90a01d07eba7af734f1b5a1b657584d64264"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145635/kopia-20220123.0.145635-linux-arm.tar.gz"
    sha256 "6d69df8ceb5849f779eb3289ea0e2efdc1bdbc51580a5672ea39b19910ecf3db"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220123.0.145635/kopia-20220123.0.145635-linux-arm64.tar.gz"
    sha256 "5d8c7efa470a83b261e01c2906674c1f89f2d867640ac8069e07674ebc78fa3d"
  end

  def install
    bin.install "kopia"
  end
end
