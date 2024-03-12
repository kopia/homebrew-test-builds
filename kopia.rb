# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240312.0.110550"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.110550/kopia-20240312.0.110550-macOS-x64.tar.gz"
    sha256 "2711d369a3005d02d7b544d72303cf8f4adb055f2e83ed07884e988b48b53ec1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.110550/kopia-20240312.0.110550-macOS-arm64.tar.gz"
    sha256 "f75ea0a9f7bf8d2531f9ed09c96fd0667136047c193aab3c13151dbc2f93a0d1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.110550/kopia-20240312.0.110550-linux-x64.tar.gz"
    sha256 "2c6c14449f014db86914070b40873207271c84093ea107ecf4616381acb11e10"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.110550/kopia-20240312.0.110550-linux-arm.tar.gz"
    sha256 "f6eb5c6829773bcd35f38eab4cd35fbe963c805f07010aa78296e52ca3dc58b5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240312.0.110550/kopia-20240312.0.110550-linux-arm64.tar.gz"
    sha256 "0a8d9bc87e676835c56536ec580b2fe44d1517817aede071dc957209e456d7f6"
  end

  def install
    bin.install "kopia"
  end
end
