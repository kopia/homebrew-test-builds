# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220709.0.182250"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220709.0.182250/kopia-20220709.0.182250-macOS-x64.tar.gz"
    sha256 "46ec99859b4b1b1626878a68625870c27e4999e8f7e3e6e06c0054e1f84c4d0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220709.0.182250/kopia-20220709.0.182250-macOS-arm64.tar.gz"
    sha256 "5570d96a84e85d9473a9839e64fa3bfb03fc2c10bd0e14fffcecfc18df626218"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220709.0.182250/kopia-20220709.0.182250-linux-x64.tar.gz"
    sha256 "52a67505a470745c2c7c99ed864928c1e38c02e2b1e5da22f27cad7509b30df8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220709.0.182250/kopia-20220709.0.182250-linux-arm.tar.gz"
    sha256 "c1cad7beea1c0412277162017369c53fdbff2f0f28522477109cf532e473ec2a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220709.0.182250/kopia-20220709.0.182250-linux-arm64.tar.gz"
    sha256 "8bf3a0d47dde5a8af315e06aa8432744d996b8f6806859cc4b0b384b0ea7789a"
  end

  def install
    bin.install "kopia"
  end
end
