# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250724.0.1107"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250724.0.1107/kopia-20250724.0.1107-macOS-x64.tar.gz"
    sha256 "3cb09a59e516f542a72642488776c2bcd52af6227ea5ef5ce11f78629b7cf592"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250724.0.1107/kopia-20250724.0.1107-macOS-arm64.tar.gz"
    sha256 "adb9b0af1bab46d7fb9c54dcbee1a94ced7f96dc5835ead93e3152e5794a8a24"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250724.0.1107/kopia-20250724.0.1107-linux-x64.tar.gz"
    sha256 "76b54f1904c0bdcfe6b791336d5c4ee328f2a0f6b4446706b378342ccdfeaca2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250724.0.1107/kopia-20250724.0.1107-linux-arm.tar.gz"
    sha256 "881d0b8c962f6d5fe1df84e9d690d878d1867a25a5a4f9de7acb613271bb16ea"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250724.0.1107/kopia-20250724.0.1107-linux-arm64.tar.gz"
    sha256 "696a8e9d5376a24869700286a8ad2816f0471d7e0e0b936b6eed0c4109f70619"
  end

  def install
    bin.install "kopia"
  end
end
