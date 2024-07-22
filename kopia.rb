# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240722.0.83739"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.83739/kopia-20240722.0.83739-macOS-x64.tar.gz"
    sha256 "45a98df84ad14ea9726de6ce2850afaae4ee024c7a55d173d11c785134b56af1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.83739/kopia-20240722.0.83739-macOS-arm64.tar.gz"
    sha256 "0145fb955473a98c2dafff1ebb48a11ed61e51d6edf3a5e105678084c589d0d6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.83739/kopia-20240722.0.83739-linux-x64.tar.gz"
    sha256 "1d6c35618bd199599fcb238a2dc38b73acc36225ba20370bec852053fd93de04"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.83739/kopia-20240722.0.83739-linux-arm.tar.gz"
    sha256 "9f11602ccce250dd905d2aa7a996e0afeb7c26ff51be7df8860a61b71e0efa75"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240722.0.83739/kopia-20240722.0.83739-linux-arm64.tar.gz"
    sha256 "f987585475459dd3cf2bda35b835455e796d1c5c14c10d5c6684621e73424df7"
  end

  def install
    bin.install "kopia"
  end
end
