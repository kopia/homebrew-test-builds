# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250524.0.62516"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.62516/kopia-20250524.0.62516-macOS-x64.tar.gz"
    sha256 "255577692035ad61e419f307e965017fcb9d4e399e369e95715075b90f88c7c9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.62516/kopia-20250524.0.62516-macOS-arm64.tar.gz"
    sha256 "d267e692567b7f37db91adec2389e9965340837768f50fe6b13e053c84c87fcc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.62516/kopia-20250524.0.62516-linux-x64.tar.gz"
    sha256 "bca089a2c4d5ff64aa15f2fbca67005280327c10b90d5686ef4ae5deeb52ff2b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.62516/kopia-20250524.0.62516-linux-arm.tar.gz"
    sha256 "14bf055c77350fff43667031054e1020f57b4ab100a9974f75ce27d82896ec92"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250524.0.62516/kopia-20250524.0.62516-linux-arm64.tar.gz"
    sha256 "a04d1be2b7fd61e8b4ca567db4519f861d5b74b5200e60c512969654e6b1a639"
  end

  def install
    bin.install "kopia"
  end
end
