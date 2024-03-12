# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240311.0.214714"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.214714/kopia-20240311.0.214714-macOS-x64.tar.gz"
    sha256 "10cf360f536cc7c23a025b121e02247f80daf57657fd832a88f98d9fb40ce3f9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.214714/kopia-20240311.0.214714-macOS-arm64.tar.gz"
    sha256 "3de5a87784dc2d80799ea3fcbd93775701a721ef89e26b08e684ae45410d04b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.214714/kopia-20240311.0.214714-linux-x64.tar.gz"
    sha256 "84ddad9cf9bdff6868e0eb3f918a7ddb365e11c1965585c53a4c0a6f3f3ec3f0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.214714/kopia-20240311.0.214714-linux-arm.tar.gz"
    sha256 "e6ec9d22b7592609d85d4860b405f1aae31d063b582d5a922e14f6cf32ff834f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240311.0.214714/kopia-20240311.0.214714-linux-arm64.tar.gz"
    sha256 "d2ebf998e513f4323166fdc6eee3e2cf79d2ea9fdb1049bf35e2b9b2e75d5070"
  end

  def install
    bin.install "kopia"
  end
end
