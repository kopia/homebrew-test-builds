# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251125.0.12813"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.12813/kopia-20251125.0.12813-macOS-x64.tar.gz"
    sha256 "b7554c32740471d0297c5fedcad9f970672567d7dcf6ed36b3b2606e85a9fd19"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.12813/kopia-20251125.0.12813-macOS-arm64.tar.gz"
    sha256 "68920b6bcb84e1f0530ebbdc8c245c8103cdcc404f01e286ac443c92fdc09d7f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.12813/kopia-20251125.0.12813-linux-x64.tar.gz"
    sha256 "f6790a56eedf11401be400431a9eba222ecf6b002f51e9eb07f51973ca04b33a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.12813/kopia-20251125.0.12813-linux-arm.tar.gz"
    sha256 "ac4caf42818c7165832d53e2c640dcc19af4a00636e6df469e2ac5ca6c1dae9e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251125.0.12813/kopia-20251125.0.12813-linux-arm64.tar.gz"
    sha256 "950630eca42be3b6e2a61a5990d851ab20362936212d877dc0be307312997519"
  end

  def install
    bin.install "kopia"
  end
end
