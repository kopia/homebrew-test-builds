# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211211.0.215559"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.215559/kopia-20211211.0.215559-macOS-x64.tar.gz"
    sha256 "963f4576cb57f3d2c52caacefbe5e575773d1ac41278be8ee5be2d68b5a18454"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.215559/kopia-20211211.0.215559-macOS-arm64.tar.gz"
    sha256 "a1d5fff793752d0080d0638957082d9a00f47dc461f417c1d965ef75c7fe20ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.215559/kopia-20211211.0.215559-linux-x64.tar.gz"
    sha256 "ff7d62b3d7a48bee737237a3942ec12d885f4901ca82e42418d4c98dafa03dc7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.215559/kopia-20211211.0.215559-linux-arm.tar.gz"
    sha256 "5614110de7c9f46c310549b1baaea708794ffac53619f8f86c1ac95893717f34"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211211.0.215559/kopia-20211211.0.215559-linux-arm64.tar.gz"
    sha256 "b23995c29fa1274d515a14b72212617f181b4ec35d17f0314ef0b4035b9af74e"
  end

  def install
    bin.install "kopia"
  end
end
