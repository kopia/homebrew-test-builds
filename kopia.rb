# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211017.0.201425"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.201425/kopia-20211017.0.201425-macOS-x64.tar.gz"
    sha256 "2ba26f3806aab7ac760c76d767e31735603b44ec6851e001bd63c5652c314860"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.201425/kopia-20211017.0.201425-macOS-arm64.tar.gz"
    sha256 "507f31ba4603dce0be957de2944f47ca7c2b5109ca1ea508f63d32b69eb9ff12"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.201425/kopia-20211017.0.201425-linux-x64.tar.gz"
    sha256 "fe26c5648ebf222adfb46117009202560cd75c4e479425ff74e4bd360ce3173c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.201425/kopia-20211017.0.201425-linux-arm.tar.gz"
    sha256 "d2d6b34a85b4ec94d5980dc17e1b635d2fe2c5ddc7361196ec532584886dcda1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211017.0.201425/kopia-20211017.0.201425-linux-arm64.tar.gz"
    sha256 "03af73c18fbeea0eff4723b78fe5e16095ea65ca9c902c846b7a077ff2a57300"
  end

  def install
    bin.install "kopia"
  end
end
