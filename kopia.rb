# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240216.0.102558"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.102558/kopia-20240216.0.102558-macOS-x64.tar.gz"
    sha256 "672071372536c1e4d2b4a046addc7d4f9604b91e0c453088e66ff6331e22ae50"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.102558/kopia-20240216.0.102558-macOS-arm64.tar.gz"
    sha256 "721439c48546464485363ce36795ef3bc582639be7732a03341502c5a8b69c0e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.102558/kopia-20240216.0.102558-linux-x64.tar.gz"
    sha256 "0f0e2dfb3ac343ce87d2e8e2e467e62515b6c9e869d720b66d16b395597842c5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.102558/kopia-20240216.0.102558-linux-arm.tar.gz"
    sha256 "9c4be25ee1ad89abadd22115762958f55f4b57d3da16f31c32f60d3f6a12a5d5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240216.0.102558/kopia-20240216.0.102558-linux-arm64.tar.gz"
    sha256 "e665b442da65743083568c97e1851b088fcc772d0f96cf19851955ab0c9c8bc6"
  end

  def install
    bin.install "kopia"
  end
end
