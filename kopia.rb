# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210406.0.82627"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.82627/kopia-20210406.0.82627-macOS-x64.tar.gz"
    sha256 "e2073c40375b3cf80d7831b2dc71b9b499656fa876239731575d2884a32c62bf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.82627/kopia-20210406.0.82627-macOS-arm64.tar.gz"
    sha256 "f651c53381212fddd7af891fc1431e0b7ea626683b73afe6f39b643d630bf170"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.82627/kopia-20210406.0.82627-linux-x64.tar.gz"
    sha256 "0fe3255a3d0bbec4d387e4683bd4ae52f1cc67ff7088d5e913414fb73a7429fb"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.82627/kopia-20210406.0.82627-linux-arm.tar.gz"
    sha256 "e90124466a47a019856a6aade00cf0e8abd6f11046103b9876bf44e4b34471e9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210406.0.82627/kopia-20210406.0.82627-linux-arm64.tar.gz"
    sha256 "b117f48ef275e216946110299740f56661d32e1ca6d2feaebf4c5b69ba1fa6d1"
  end

  def install
    bin.install "kopia"
  end
end
