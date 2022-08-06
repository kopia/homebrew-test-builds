# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220806.0.5455"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.5455/kopia-20220806.0.5455-macOS-x64.tar.gz"
    sha256 "28dcf7a90c674e971475902c5855e88d0f5410e6104401367b7cdefc8d4e4690"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.5455/kopia-20220806.0.5455-macOS-arm64.tar.gz"
    sha256 "2834ef25112b115ad183a3c9fd0230a2319b22bb615ed0f00fb11de1f8995d66"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.5455/kopia-20220806.0.5455-linux-x64.tar.gz"
    sha256 "2252ac2b60aab34548faafd999e4b58e34d3a88f135a0240ff6b95ab400174a4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.5455/kopia-20220806.0.5455-linux-arm.tar.gz"
    sha256 "102cd6a7de5771e2e735b8f9a1d25a3dbd746ff3a7595a6c67daf2d34c6cfbc6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220806.0.5455/kopia-20220806.0.5455-linux-arm64.tar.gz"
    sha256 "ba1c127bccc6c3f7c813e474761ec9012c74fb33e9d16587c02dac541ead3335"
  end

  def install
    bin.install "kopia"
  end
end
