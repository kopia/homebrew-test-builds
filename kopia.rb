# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251113.0.11934"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.11934/kopia-20251113.0.11934-macOS-x64.tar.gz"
    sha256 "6effa38b6fe750c2309d41f863b136b9126fcdf55ae66137bf07b2ad02b78e98"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.11934/kopia-20251113.0.11934-macOS-arm64.tar.gz"
    sha256 "8e2631152a69eff635ceb17cb0b8de0e9954b7ac6a8bf67f41663123f6b9e26c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.11934/kopia-20251113.0.11934-linux-x64.tar.gz"
    sha256 "9b7d305251c630d75c66109a6678a88abbc02d89b49f4dd5b9dbb4394025a256"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.11934/kopia-20251113.0.11934-linux-arm.tar.gz"
    sha256 "5e312422f4c04d471c572fc133ab159901bf0bac61fd2e4deda7ef9cf7d4f1c5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.11934/kopia-20251113.0.11934-linux-arm64.tar.gz"
    sha256 "00064d8a0ae03b2c1add4d7065958afbebe8f11b2c3aadf0a72de476bf4205d6"
  end

  def install
    bin.install "kopia"
  end
end
