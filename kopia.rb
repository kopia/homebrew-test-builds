# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250603.0.13050"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.13050/kopia-20250603.0.13050-macOS-x64.tar.gz"
    sha256 "5f067af4fbe6e67b1f43cd62919ed36f5c18a9ddd140f425e4165204133e80c2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.13050/kopia-20250603.0.13050-macOS-arm64.tar.gz"
    sha256 "7eb60c8406b0c035c169c6476b67ad5505345634cbfa7083cf016ea871af07da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.13050/kopia-20250603.0.13050-linux-x64.tar.gz"
    sha256 "cd3d673f76a3a6e354072514eb4b2ca2723b3865fa3d1ff588e1643c83469733"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.13050/kopia-20250603.0.13050-linux-arm.tar.gz"
    sha256 "5e37483dcb54b8a51977c5aa301490010475913d5d106044a7f940b05a606ba4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250603.0.13050/kopia-20250603.0.13050-linux-arm64.tar.gz"
    sha256 "fad56716cc978a47ac68f9d245d27e0bcd50c814ce109aa022c7ca4877d7618b"
  end

  def install
    bin.install "kopia"
  end
end
