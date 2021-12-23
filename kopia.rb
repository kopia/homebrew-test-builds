# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211222.0.213426"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.213426/kopia-20211222.0.213426-macOS-x64.tar.gz"
    sha256 "c784e85b49040ae0e6e1862be8d96fd423e81b19a66aa1a98b9d150d28f66aac"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.213426/kopia-20211222.0.213426-macOS-arm64.tar.gz"
    sha256 "2558d1b25c2b88727f0045689f30b2a6687fed3aa2ebb7e0de8dfd70f18bd9a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.213426/kopia-20211222.0.213426-linux-x64.tar.gz"
    sha256 "37a49161e497021b9ad6dbc445d0bcc1eb31d755891f6db12eca60e015b0bd2d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.213426/kopia-20211222.0.213426-linux-arm.tar.gz"
    sha256 "fe17a6554c24fa16bd1c8593e386a6365c290d2e9b79f04c0d68f45cabbe7caa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211222.0.213426/kopia-20211222.0.213426-linux-arm64.tar.gz"
    sha256 "9e2ae7d4a7feaf83cd54a5419d6bc0711ea5de8cc8f1a95e8d4340eb17921cf3"
  end

  def install
    bin.install "kopia"
  end
end
