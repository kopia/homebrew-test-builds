# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221204.0.205707"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221204.0.205707/kopia-20221204.0.205707-macOS-x64.tar.gz"
    sha256 "baca7899fdff3ef67946e055cf033f229794561529e3f9e3d0f6b54cead15d3b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221204.0.205707/kopia-20221204.0.205707-macOS-arm64.tar.gz"
    sha256 "713a68b0911e7dda7145c98bbade17bd543ce775ae2d21073ed2688ee28c1bb5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221204.0.205707/kopia-20221204.0.205707-linux-x64.tar.gz"
    sha256 "a7b5aa1b05752f3f00d4ffc7dd20f4a999e1dc35308c68f672726896c428b1ce"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221204.0.205707/kopia-20221204.0.205707-linux-arm.tar.gz"
    sha256 "792f3343be90ba9d3cf8bcb560f26f858ce6e49a63636f06d802ea2448b3ba39"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221204.0.205707/kopia-20221204.0.205707-linux-arm64.tar.gz"
    sha256 "cc4b1600eca5c656774964ef0c28f9897a744f8b9591fbd151486851142f193a"
  end

  def install
    bin.install "kopia"
  end
end
