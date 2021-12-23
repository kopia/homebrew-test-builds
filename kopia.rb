# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211222.0.204056"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.204056/kopia-20211222.0.204056-macOS-x64.tar.gz"
    sha256 "77cf1340c97437c0eeeac87dc953ed722e57c12ba9d4322f7634ca78fb739c60"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.204056/kopia-20211222.0.204056-macOS-arm64.tar.gz"
    sha256 "2078602e84765338ac5cc4f3193036d05a5a00b0cc3c21ef8834b44b6856a7bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.204056/kopia-20211222.0.204056-linux-x64.tar.gz"
    sha256 "4de9085e4b499f48d86a31cd593154fae46d0f3f03ae332fd889681e23732318"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.204056/kopia-20211222.0.204056-linux-arm.tar.gz"
    sha256 "40694e2d6d1b18aa9a52060882c2ef59844ed53556b653b56f06c36d36a14f76"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.204056/kopia-20211222.0.204056-linux-arm64.tar.gz"
    sha256 "fe6245e6e32df0b27169a34b8aec1134aa298c8569417dfae10096054444cd65"
  end

  def install
    bin.install "kopia"
  end
end
