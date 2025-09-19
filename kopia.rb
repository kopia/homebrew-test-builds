# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250919.0.55521"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250919.0.55521/kopia-20250919.0.55521-macOS-x64.tar.gz"
    sha256 "c0add1447da4d885c2a5bd5a70b210c405eed53fb69a724857d80ef082fdda16"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250919.0.55521/kopia-20250919.0.55521-macOS-arm64.tar.gz"
    sha256 "6c9e5fa0adbe2718ad7bb6162953aae39537e936d60fd5b096a084e42d902371"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250919.0.55521/kopia-20250919.0.55521-linux-x64.tar.gz"
    sha256 "3837b0bfcfc42e6b5d7174905a732d89eb1030162f0875cf94e78db02caf48a0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250919.0.55521/kopia-20250919.0.55521-linux-arm.tar.gz"
    sha256 "8702e5a0536b4427bb87e5746206d9efa1efd8bad08791ed19364ab14bbab85b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250919.0.55521/kopia-20250919.0.55521-linux-arm64.tar.gz"
    sha256 "ca1350ce475d7fee2d25ef6d8b6850c2fe90b793fc703db66acea533d10d3a17"
  end

  def install
    bin.install "kopia"
  end
end
