# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211106.0.171053"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.171053/kopia-20211106.0.171053-macOS-x64.tar.gz"
    sha256 "d2e1620351340349aca4470cbadff2171503295210fa68b924e1efd7d72d9b5b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.171053/kopia-20211106.0.171053-macOS-arm64.tar.gz"
    sha256 "08daabc92cee2a9d1a5d0a5fe76c8667eef714293f9395b9095761a2b232f1ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.171053/kopia-20211106.0.171053-linux-x64.tar.gz"
    sha256 "4131919b8f71e2efa316884bd6b742775870aee5052b0cad969a6d16ee81e592"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.171053/kopia-20211106.0.171053-linux-arm.tar.gz"
    sha256 "629da370598d4e2e24a154cb383eeed7281254214db9a74f478ea3673e1af05c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.171053/kopia-20211106.0.171053-linux-arm64.tar.gz"
    sha256 "6be72716fa234401a0782f09f477fd8ef3cf49668f7b233ba8a679cfd1773a29"
  end

  def install
    bin.install "kopia"
  end
end
