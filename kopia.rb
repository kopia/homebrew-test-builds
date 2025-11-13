# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251113.0.71206"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.71206/kopia-20251113.0.71206-macOS-x64.tar.gz"
    sha256 "cc505edf212d7d9fba6cbfa913e9584b7b3258e6bfcff74168b46e7b43c04a47"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.71206/kopia-20251113.0.71206-macOS-arm64.tar.gz"
    sha256 "706f344cb050a95753886639425ba4624004e641282ec944c22ec5aa6b9a769e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.71206/kopia-20251113.0.71206-linux-x64.tar.gz"
    sha256 "897259b2935dcfd9288574eb1bb381f90889be1bf00e3fa6cb2b159731d7bb81"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.71206/kopia-20251113.0.71206-linux-arm.tar.gz"
    sha256 "38f88c0bd5eb06ba80781a6a3d257d83cd7eb15d767f0379e89a29efbfd953e3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251113.0.71206/kopia-20251113.0.71206-linux-arm64.tar.gz"
    sha256 "b2ca0fb2f3e039b173fd373123fa40984bdde73484b79acf92fe0aed1e9619a4"
  end

  def install
    bin.install "kopia"
  end
end
