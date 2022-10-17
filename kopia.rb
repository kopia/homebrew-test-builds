# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221015.0.1141"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221015.0.1141/kopia-20221015.0.1141-macOS-x64.tar.gz"
    sha256 "64fd4109a10bd0c013164b722d1ae3a21aad22165bf671f0d5f1961e2598d83b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221015.0.1141/kopia-20221015.0.1141-macOS-arm64.tar.gz"
    sha256 "7e19f535cc62d77f956eb0d0ab9454dbb520933f24476f28d067a96a447b6ddd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221015.0.1141/kopia-20221015.0.1141-linux-x64.tar.gz"
    sha256 "5720a7340adfd6f9e170984197f22cf019234505b368d4ef367c83deccd15c83"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221015.0.1141/kopia-20221015.0.1141-linux-arm.tar.gz"
    sha256 "9877cc5edb95024d2e43ee82bb909398b786229b356919900e0bfc7b3c2e03b1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221015.0.1141/kopia-20221015.0.1141-linux-arm64.tar.gz"
    sha256 "fa1ea3bc4c56c8d81299facc9686f67dc978aea11c0bf057f27cbd5c5eff64ae"
  end

  def install
    bin.install "kopia"
  end
end
