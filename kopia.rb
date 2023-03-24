# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230324.0.151903"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230324.0.151903/kopia-20230324.0.151903-macOS-x64.tar.gz"
    sha256 "7efacfb5d4ac727e8f9e96bc0f3fc9156283517faa722e923b6bfae780569b71"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230324.0.151903/kopia-20230324.0.151903-macOS-arm64.tar.gz"
    sha256 "e96ff911a1a5f25f6179205c88adda63c285b7e45183796f363d3a53b5d5546a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230324.0.151903/kopia-20230324.0.151903-linux-x64.tar.gz"
    sha256 "a35decdee9e5460a805aec3ccc66d5780aad763cf2756360e6b605c3d2212d7c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230324.0.151903/kopia-20230324.0.151903-linux-arm.tar.gz"
    sha256 "c19ae4dc7ccd36860dd28cf7e18ab1aca41209ed754be5c10aa24d7e62ef5b60"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230324.0.151903/kopia-20230324.0.151903-linux-arm64.tar.gz"
    sha256 "a31d6b05724ae2734f82b02cc4f551922203105e3c44503993880ed319e92178"
  end

  def install
    bin.install "kopia"
  end
end
