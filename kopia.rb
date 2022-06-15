# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220615.0.62121"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.62121/kopia-20220615.0.62121-macOS-x64.tar.gz"
    sha256 "bc1e26d1654011970cc65c5db407cb377bb2ccc5162be5849d0c9cdbf24fe545"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.62121/kopia-20220615.0.62121-macOS-arm64.tar.gz"
    sha256 "b9fb7eb742da532bfc3e8facb848b884698fe5e154dbdb47b00215a4610ea1d3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.62121/kopia-20220615.0.62121-linux-x64.tar.gz"
    sha256 "b435a57247d3504b0b9afc7a1a6e280cf56fd63f3fd78b373c739bd737e5364b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.62121/kopia-20220615.0.62121-linux-arm.tar.gz"
    sha256 "0c8a54e4af8ec96a616bd1bb4f62861bd4e66eda4d675bf18e1398e2bdae4378"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220615.0.62121/kopia-20220615.0.62121-linux-arm64.tar.gz"
    sha256 "f0068db85306521ba83b84c314751e2140e947fd474306d379a5d20d2fa40621"
  end

  def install
    bin.install "kopia"
  end
end
