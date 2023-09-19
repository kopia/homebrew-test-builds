# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230918.0.214739"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.214739/kopia-20230918.0.214739-macOS-x64.tar.gz"
    sha256 "080d1f0b5098cc07e9ad65dbfcf6fa698a1a7c9d08166edef13927ba53ff6d54"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.214739/kopia-20230918.0.214739-macOS-arm64.tar.gz"
    sha256 "92b2dca380b3a26aa9bed5aba70b35198b1a34877f25a0f8188c97044bf559ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.214739/kopia-20230918.0.214739-linux-x64.tar.gz"
    sha256 "158cdc2286f306a3d0338f42b793d9e1f53259145570ca810702c8ec7eea7dc7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.214739/kopia-20230918.0.214739-linux-arm.tar.gz"
    sha256 "c1a83ca8f31d3580fdedf41783f990f8e4e805f7e4edadedb94186a20f4a7309"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230918.0.214739/kopia-20230918.0.214739-linux-arm64.tar.gz"
    sha256 "1134c4003f9c43f6dc34578e77cca69f36a50a20c825dd29079b92f0e2c52ae9"
  end

  def install
    bin.install "kopia"
  end
end
