# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210906.0.170430"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210906.0.170430/kopia-20210906.0.170430-macOS-x64.tar.gz"
    sha256 "9db212d2fdb05f8fa093db5de59c1c4eec7d649ecb3af6e117ea4357bcf69868"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210906.0.170430/kopia-20210906.0.170430-macOS-arm64.tar.gz"
    sha256 "7fb996fa6c00a4f9bfb4d0ed6a93f6bc151116a9a738baeb50d4e85801930529"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210906.0.170430/kopia-20210906.0.170430-linux-x64.tar.gz"
    sha256 "d2aa23d6dc92e53a2271a7c877a248f21f0191bd24241955c50704d84de10ed3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210906.0.170430/kopia-20210906.0.170430-linux-arm.tar.gz"
    sha256 "a0f32603646686ea0229feeb564abb6534c75e085f13eb529d51458da6fb99fe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210906.0.170430/kopia-20210906.0.170430-linux-arm64.tar.gz"
    sha256 "7680a5cac70bed76fbf1149efa213cdb6f08158ada02985f1d3f62fb7c11fc48"
  end

  def install
    bin.install "kopia"
  end
end
