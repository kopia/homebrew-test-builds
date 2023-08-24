# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230824.0.93856"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230824.0.93856/kopia-20230824.0.93856-macOS-x64.tar.gz"
    sha256 "61e4832bd49f7495a963a2eeab5d69b5699420681872094f9d24324f23bb7fa2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230824.0.93856/kopia-20230824.0.93856-macOS-arm64.tar.gz"
    sha256 "cbbddc2f6a7da07b15a5b4165f7f012ac6fd1d64e47b91cc403d930f16564c97"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230824.0.93856/kopia-20230824.0.93856-linux-x64.tar.gz"
    sha256 "e6c5f4ebefdbc5d31875877d12429da3a0dc91e0768a523c56fd65b05b06e460"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230824.0.93856/kopia-20230824.0.93856-linux-arm.tar.gz"
    sha256 "479bb4b5a8a4059b40e79b053a03c8b57a2e9bf48a450612d4bc489c00532e04"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230824.0.93856/kopia-20230824.0.93856-linux-arm64.tar.gz"
    sha256 "94c745243f1313021ec268cc60c8d432943654d90df9e84d2832394def46377f"
  end

  def install
    bin.install "kopia"
  end
end
