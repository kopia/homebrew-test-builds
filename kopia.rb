# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250719.0.192403"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250719.0.192403/kopia-20250719.0.192403-macOS-x64.tar.gz"
    sha256 "09855ab4d36fc488875dd7bef753632818e98b6ec2358a6a1db2278e5318617f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250719.0.192403/kopia-20250719.0.192403-macOS-arm64.tar.gz"
    sha256 "4c4419ee58921d630e1e395e43302df8ffd7c48ba926c148940ab6e8af3a0951"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250719.0.192403/kopia-20250719.0.192403-linux-x64.tar.gz"
    sha256 "ef68848a0c87b09fbab4f9d3f9535294af3baf2b371b0771ac0d5dae4da0cf33"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250719.0.192403/kopia-20250719.0.192403-linux-arm.tar.gz"
    sha256 "ce8fecab90ccaa028005759213704d838c897ca63157691f6182b32794333fd6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250719.0.192403/kopia-20250719.0.192403-linux-arm64.tar.gz"
    sha256 "7e569b6b39fc02be4529d1096f5c909d05e08360d590613f97f93ed34552339e"
  end

  def install
    bin.install "kopia"
  end
end
