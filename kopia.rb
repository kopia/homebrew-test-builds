# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250803.0.35640"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250803.0.35640/kopia-20250803.0.35640-macOS-x64.tar.gz"
    sha256 "035625f872ba60ac51ac35c6a767a2d8352c09f96ef2d715d1a3c7256e59fa5f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250803.0.35640/kopia-20250803.0.35640-macOS-arm64.tar.gz"
    sha256 "c3632b57d029e312ad4dc6713c59064a6c0fe9bba7393887d63f9ca7812889b6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250803.0.35640/kopia-20250803.0.35640-linux-x64.tar.gz"
    sha256 "3b806be0da5a67f0c8f9123139584dce2e5b68ee5345077ebd1bb1fc4f89e304"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250803.0.35640/kopia-20250803.0.35640-linux-arm.tar.gz"
    sha256 "03e3290735c83e75d028318d8fbfd9e54876b01687d4eb017f45734cde32ed01"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250803.0.35640/kopia-20250803.0.35640-linux-arm64.tar.gz"
    sha256 "b2341bd16f550dbc52036638d28e787a9bfc2269133bd33daab7ee668a70f25b"
  end

  def install
    bin.install "kopia"
  end
end
