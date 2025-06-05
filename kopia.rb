# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250605.0.52702"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.52702/kopia-20250605.0.52702-macOS-x64.tar.gz"
    sha256 "3e4f6f10c78973dd7caa0ce3f1b3425214fb37b7514e9a9f79706a44a7f43f9a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.52702/kopia-20250605.0.52702-macOS-arm64.tar.gz"
    sha256 "96c6178f2a9d93523543f9c10485d678598d09f78348950d624862f73c336d96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.52702/kopia-20250605.0.52702-linux-x64.tar.gz"
    sha256 "a39e9ca69805ed5b13be834d79aba03ec4d23b708f3783f8803e76d413344069"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.52702/kopia-20250605.0.52702-linux-arm.tar.gz"
    sha256 "408e8f92c74cc8aae8a62d5d089d2260df130ea7612f799e8b6961124af33630"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250605.0.52702/kopia-20250605.0.52702-linux-arm64.tar.gz"
    sha256 "9b90f62c16bef6e1fa2c6a5c1531c6a6c4ed708bbf26ebcea5df36f0c6f3ae9f"
  end

  def install
    bin.install "kopia"
  end
end
