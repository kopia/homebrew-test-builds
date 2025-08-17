# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250817.0.24436"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.24436/kopia-20250817.0.24436-macOS-x64.tar.gz"
    sha256 "fb2e02369b01ab377ea5e38520acd50bb24c5198c41ada9bdef668f974870048"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.24436/kopia-20250817.0.24436-macOS-arm64.tar.gz"
    sha256 "16b79015792b30ad078cd730b2c91acaf183239064b1184eebca0f7ab7261e9d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.24436/kopia-20250817.0.24436-linux-x64.tar.gz"
    sha256 "e1965e7055a6d5e47be0c38bf601fd013a407c6e28b17d5b96679afb7c1e054d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.24436/kopia-20250817.0.24436-linux-arm.tar.gz"
    sha256 "4a2f34c7c6d096942563decd13e5e74ac50bc9b74414afa30c20bf1dcf5c7f46"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250817.0.24436/kopia-20250817.0.24436-linux-arm64.tar.gz"
    sha256 "c77fffb57be2ca1a76c8bf0c4ff2b5a40258cca1b2a8f187737694098b00deec"
  end

  def install
    bin.install "kopia"
  end
end
