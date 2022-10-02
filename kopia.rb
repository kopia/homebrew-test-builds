# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20221002.0.35731"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.35731/kopia-20221002.0.35731-macOS-x64.tar.gz"
    sha256 "e59a51735fe4f52ea9f565771d88246e9a3fc9b8d28496eed2ef9bda44e7ab5f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.35731/kopia-20221002.0.35731-macOS-arm64.tar.gz"
    sha256 "3e04d52ba7bf284ff7d142993178fa7e13d08b14c597445397e61985052665fe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.35731/kopia-20221002.0.35731-linux-x64.tar.gz"
    sha256 "a5e7267b581ec903bfc0d14183074496d73c10b3163339773417f58c5e5b32ea"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.35731/kopia-20221002.0.35731-linux-arm.tar.gz"
    sha256 "cc9ad5412c1f9feeb5011f74a809c81c076b73ce11db4cce469da042370fcbcf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20221002.0.35731/kopia-20221002.0.35731-linux-arm64.tar.gz"
    sha256 "0535735e65e44fdfb39ea2c72bcd3ee03c4ead26e65f3dcc4451f6be36ec33c0"
  end

  def install
    bin.install "kopia"
  end
end
