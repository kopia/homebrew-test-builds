# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260925.0.34408"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.34408/kopia-20260925.0.34408-macOS-x64.tar.gz"
    sha256 "352bdf6823addeff316494bdb961d71bb0cdc04b2db43193b3d0926206b12d6f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.34408/kopia-20260925.0.34408-macOS-arm64.tar.gz"
    sha256 "66e0290fd8d4f92f50d2e13abd84667f028344a4f54c145c016ef4cdf700004c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.34408/kopia-20260925.0.34408-linux-x64.tar.gz"
    sha256 "eec037428930bf653bf52ea30c331d6ef627de59a77448940855a2b141c1ca93"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.34408/kopia-20260925.0.34408-linux-arm.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260925.0.34408/kopia-20260925.0.34408-linux-arm64.tar.gz"
    sha256 "168b53fb876b03102a328a63b1ba20f828d387bc2ed3e4b34c1a89a2a38aca16"
  end

  def install
    bin.install "kopia"
  end
end
