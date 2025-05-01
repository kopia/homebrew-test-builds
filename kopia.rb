# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250501.0.5810"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.5810/kopia-20250501.0.5810-macOS-x64.tar.gz"
    sha256 "6cd5339c4b76d748825e56171dea73cb39e4c9aac5c79e9d211ab46a932d97e0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.5810/kopia-20250501.0.5810-macOS-arm64.tar.gz"
    sha256 "71556cd89ed250dd7475438ebdd4ffa4d23b1e915fb3f2e97e7d5627b4348304"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.5810/kopia-20250501.0.5810-linux-x64.tar.gz"
    sha256 "5a91e2d2cfda7f28820825faf20d9597f85152a70e310ad1b0c500ef0a8900e4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.5810/kopia-20250501.0.5810-linux-arm.tar.gz"
    sha256 "e86d34601a1bc369a1ef8f02e935618c301af2d2031ad8942f37c754514fea10"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250501.0.5810/kopia-20250501.0.5810-linux-arm64.tar.gz"
    sha256 "5561b019392dd8be1b63445324250ce2b63784e40bb56212087cca9b4289706b"
  end

  def install
    bin.install "kopia"
  end
end
