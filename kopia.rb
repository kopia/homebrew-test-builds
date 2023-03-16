# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230315.0.221114"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230315.0.221114/kopia-20230315.0.221114-macOS-x64.tar.gz"
    sha256 "4e2d8d54248924e70502ec7ff5dc3f304bd2f54303db3a36572e0bdb400b8e46"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230315.0.221114/kopia-20230315.0.221114-macOS-arm64.tar.gz"
    sha256 "8cac1bb6457dde1cac9686f91fa130b2b851fa4cec7f4f3851cc21001717e34d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230315.0.221114/kopia-20230315.0.221114-linux-x64.tar.gz"
    sha256 "4aef21c9ae2e307c95156153e41b93bea15a525aba91724efdf5c7f9a310eb41"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230315.0.221114/kopia-20230315.0.221114-linux-arm.tar.gz"
    sha256 "dea4dfb7cb83f29a0754b03bd125a6967f162e21399b4f24a83dc4063d9de25b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230315.0.221114/kopia-20230315.0.221114-linux-arm64.tar.gz"
    sha256 "cb917d49b451e0607e44727820295b9b7893ead7bb14cbc9139561423ce3333e"
  end

  def install
    bin.install "kopia"
  end
end
