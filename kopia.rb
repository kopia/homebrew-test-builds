# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220919.0.182910"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220919.0.182910/kopia-20220919.0.182910-macOS-x64.tar.gz"
    sha256 "45441666f9d822aa986703e84f499613e8c546b6a9f7d5efc858079dfe7214de"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220919.0.182910/kopia-20220919.0.182910-macOS-arm64.tar.gz"
    sha256 "3ebf0b57af348c23c5c8fc9bd62a38430760d40836f7f63051c4ecc12af550ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220919.0.182910/kopia-20220919.0.182910-linux-x64.tar.gz"
    sha256 "8f0f9a6ef905996e350b11aac87ea122abcb3985179b0ced79152926999f7a47"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220919.0.182910/kopia-20220919.0.182910-linux-arm.tar.gz"
    sha256 "836b650cd65a4cd5744e135ee8851a802c4be0921c3b8ab6dc4518610ccbddf9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220919.0.182910/kopia-20220919.0.182910-linux-arm64.tar.gz"
    sha256 "2cdedf28667e21511ed8fe5801aa472a55da951b110226a6d2afc3d439f9dda3"
  end

  def install
    bin.install "kopia"
  end
end
