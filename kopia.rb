# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220525.0.194115"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.194115/kopia-20220525.0.194115-macOS-x64.tar.gz"
    sha256 "138236962eb5ef1a57cb368144b1a3b404affa29376b4063fd43b659215394c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.194115/kopia-20220525.0.194115-macOS-arm64.tar.gz"
    sha256 "ea2e6ed842277726ead9614b51a0be85be400f392d0f3601d158c5d54c29ae22"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.194115/kopia-20220525.0.194115-linux-x64.tar.gz"
    sha256 "213462f3ec57bd46c0a16086ec521a7d00d28d64ad1521c46ae6bf97272da7fa"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.194115/kopia-20220525.0.194115-linux-arm.tar.gz"
    sha256 "c729bc07039196533b01e4a7bef9f6595895c16d35e51e066958f2a87e864c91"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220525.0.194115/kopia-20220525.0.194115-linux-arm64.tar.gz"
    sha256 "75780754add610b8b9fedaacb69c74c0cd88adf7d5199da1483b8579272edaba"
  end

  def install
    bin.install "kopia"
  end
end
