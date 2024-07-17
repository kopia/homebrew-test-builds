# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240716.0.231855"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.231855/kopia-20240716.0.231855-macOS-x64.tar.gz"
    sha256 "7654e48e4ab723995de742d255011d1e974c08488d4bbd63a7abafe0d4d99539"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.231855/kopia-20240716.0.231855-macOS-arm64.tar.gz"
    sha256 "d5e0899e3cfa4b35caf5d63ecdc7c11adc5e9eae6f50652f1489619d42bfff3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.231855/kopia-20240716.0.231855-linux-x64.tar.gz"
    sha256 "7be63f72d4da6d6c1519468d1fcf103030f3d04240819d2a75a6549f477c4a13"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.231855/kopia-20240716.0.231855-linux-arm.tar.gz"
    sha256 "9e26391056247645bf206008871a2b26bfb8155d5fa1ce2071287a147a1340b5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240716.0.231855/kopia-20240716.0.231855-linux-arm64.tar.gz"
    sha256 "a66177f829fb02f1d93e49326b56de205de1d7205350210275b19dd30c855cde"
  end

  def install
    bin.install "kopia"
  end
end
