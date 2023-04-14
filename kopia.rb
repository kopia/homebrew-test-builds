# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230413.0.211936"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.211936/kopia-20230413.0.211936-macOS-x64.tar.gz"
    sha256 "1b987edeb4c2100c5a429639619255547b77e9aa3995cd5408824fd72c3e8ee5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.211936/kopia-20230413.0.211936-macOS-arm64.tar.gz"
    sha256 "be4e1461dc93c0a2d5c93f5d3c8f05df569dad0f1c55bc5000cf9ec91b70e5d7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.211936/kopia-20230413.0.211936-linux-x64.tar.gz"
    sha256 "e9a753a60e3cb95a680a0c29ccae9fd4b78885dc98bcbb6a6b5257cd8c0c9dc9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.211936/kopia-20230413.0.211936-linux-arm.tar.gz"
    sha256 "0f36ffcbc155fa0a1d9d102cf6f365df7ba6dbaa382d373dca7b1b32a2812ee6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230413.0.211936/kopia-20230413.0.211936-linux-arm64.tar.gz"
    sha256 "73a1aa49a332280d9557e6c431bbc4180df599e7b5324f4409e570eae958270e"
  end

  def install
    bin.install "kopia"
  end
end
