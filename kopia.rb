# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240319.0.174645"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.174645/kopia-20240319.0.174645-macOS-x64.tar.gz"
    sha256 "b3ec978b91131ef983b4e88e02e57a7d533d9f8a47f0a3acd5c5de607b819aa0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.174645/kopia-20240319.0.174645-macOS-arm64.tar.gz"
    sha256 "00e34e0010e87f24e87f6735b7c7d8646068145432b7e59efe9cc099d97ae90f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.174645/kopia-20240319.0.174645-linux-x64.tar.gz"
    sha256 "b09567c556eba15e2868591668d0e5848a69d746a0962aee0ebacbf0a74d5a89"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.174645/kopia-20240319.0.174645-linux-arm.tar.gz"
    sha256 "11a4368b60428ee1f0800fd659b47db77a79977a9c8d9e66fa29f66c1365e520"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240319.0.174645/kopia-20240319.0.174645-linux-arm64.tar.gz"
    sha256 "7852fa513e39550a52c8ca901ddaad6cb54351de1f494f3419818ec22eb39670"
  end

  def install
    bin.install "kopia"
  end
end
