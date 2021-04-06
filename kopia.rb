# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.85752"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.85752/kopia-20210406.0.85752-macOS-x64.tar.gz"
    sha256 "6f98202f6cf03687fbd2bf36a694db78d86cd75080829c96b764378cc446d7e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.85752/kopia-20210406.0.85752-macOS-arm64.tar.gz"
    sha256 "8f3b14903f6ca98044d366a2427b810ea51009ef965ad31fb6a89be1ffb5019f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.85752/kopia-20210406.0.85752-linux-x64.tar.gz"
    sha256 "d39e2c10c11d8ec355945024ff9f9362c3629fa7b9895a7781c0ee455564a219"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.85752/kopia-20210406.0.85752-linux-arm.tar.gz"
    sha256 "605f35b32c272705e79d2aa4d9cacc26329bd7af94cd6c89ba5e828570cd6169"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.85752/kopia-20210406.0.85752-linux-arm64.tar.gz"
    sha256 "0ffd426d22c6153819074939d289d99c6697f09d90df77dc2a0f3c92af27b508"
  end

  def install
    bin.install "kopia"
  end
end
