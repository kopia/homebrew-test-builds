# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220516.0.115504"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.115504/kopia-20220516.0.115504-macOS-x64.tar.gz"
    sha256 "0c965a2f510493db4adef44cf3f290ad4df633c5c329be48d9715e88b662362e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.115504/kopia-20220516.0.115504-macOS-arm64.tar.gz"
    sha256 "38d24cd05841c469c8bd3f73fdb5ff58d7fa55e64a5bc7e4b3d6941cd113c76b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.115504/kopia-20220516.0.115504-linux-x64.tar.gz"
    sha256 "8c0ef4f2c06e8f8ed8ec7618a540631c37c39e5e379ff36669dfa1c4cf3119b3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.115504/kopia-20220516.0.115504-linux-arm.tar.gz"
    sha256 "7a3d7478137463bb40e4cb15b87898e0f087bb47a2e2d2f97784667db1845b47"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220516.0.115504/kopia-20220516.0.115504-linux-arm64.tar.gz"
    sha256 "76b03e9cf661ca0c0784c700cb69e64a711c016aa07545be01ad280805b43c36"
  end

  def install
    bin.install "kopia"
  end
end
