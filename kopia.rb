# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240912.0.230324"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240912.0.230324/kopia-20240912.0.230324-macOS-x64.tar.gz"
    sha256 "b763a0bedfd8f27e95edfcf3cfb6b3e15685434f84acf32e510afe338bab7e20"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240912.0.230324/kopia-20240912.0.230324-macOS-arm64.tar.gz"
    sha256 "1b16b8823a491d54fc765f995a16a89df934a21c13baf7fd5cd003ac38b0792a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240912.0.230324/kopia-20240912.0.230324-linux-x64.tar.gz"
    sha256 "c9b43dded3cc2cd1e30d480a31f8b500e821affff87316b0e143151f9bd3f4df"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240912.0.230324/kopia-20240912.0.230324-linux-arm.tar.gz"
    sha256 "d01dfcf478c9991049526e9e9c446884886f3e34db7a2cd67fe7509442c9b4ff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240912.0.230324/kopia-20240912.0.230324-linux-arm64.tar.gz"
    sha256 "84a1e2e2f56302c85af96b23714de97a9f9af1c2503b7a86c9d4f888e91154cf"
  end

  def install
    bin.install "kopia"
  end
end
