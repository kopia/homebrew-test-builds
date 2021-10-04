# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211003.0.181312"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181312/kopia-20211003.0.181312-macOS-x64.tar.gz"
    sha256 "0f4cd1aefca4c8f36e01f6a720d45e27725aa5452fde1b665ead7dd5ee01e575"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181312/kopia-20211003.0.181312-macOS-arm64.tar.gz"
    sha256 "0b523493babaff947c20ed25072fc4d1e28d4624d64b7027c060835c3efbf1a6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181312/kopia-20211003.0.181312-linux-x64.tar.gz"
    sha256 "c60c46146af7f2f9ebf57f01015ac9b7573f0a2c00e3ca8a6cadeb99a400789f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181312/kopia-20211003.0.181312-linux-arm.tar.gz"
    sha256 "1b015183084eedb0f97023102f9abb62a88ce7c2258dc915f57c84265817c7a3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211003.0.181312/kopia-20211003.0.181312-linux-arm64.tar.gz"
    sha256 "2f77fdab15187de1961e4d2f03b677cd6faae569f0a2470f656f425afacc1e85"
  end

  def install
    bin.install "kopia"
  end
end
