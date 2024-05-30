# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240529.0.180214"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.180214/kopia-20240529.0.180214-macOS-x64.tar.gz"
    sha256 "731a170ef8d204f76f50c5ca6be2905ca9469ff588e655c36359f0b5f978884b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.180214/kopia-20240529.0.180214-macOS-arm64.tar.gz"
    sha256 "a484fb8205fbbc21c0baed97cdb62fadcc30789cc7efd2f2d8f1658e1f2803cf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.180214/kopia-20240529.0.180214-linux-x64.tar.gz"
    sha256 "f5a2ca9f0967e8b263543ff78aa92e1cff3f673cfe00ded7895078e3e646ab60"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.180214/kopia-20240529.0.180214-linux-arm.tar.gz"
    sha256 "0091be7e26adbe8b4ffec19680049f779688dd14e7d4c314694d8203eb593d00"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240529.0.180214/kopia-20240529.0.180214-linux-arm64.tar.gz"
    sha256 "00497319c542bc801de1dadad4777880880269dd8db68209915216dca6352053"
  end

  def install
    bin.install "kopia"
  end
end
