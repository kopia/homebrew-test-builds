# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240326.0.210346"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240326.0.210346/kopia-20240326.0.210346-macOS-x64.tar.gz"
    sha256 "98ca37115e00c1e5d28218594b63e3c73d409fa6d4f054dbeb78f238bd39d44b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240326.0.210346/kopia-20240326.0.210346-macOS-arm64.tar.gz"
    sha256 "5558c36c386ed8202785c662f59e6ef46442626ca64a9d4b4fb4924fba89d9c6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240326.0.210346/kopia-20240326.0.210346-linux-x64.tar.gz"
    sha256 "4d4f7a05059fc84e96c1b071df4d8eccc3a9f029e56ce20309ceceb46f23a0a5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240326.0.210346/kopia-20240326.0.210346-linux-arm.tar.gz"
    sha256 "b076b8bfec02c8bfc24ea548b7cbbb30edfdc380b24395a802c53cdf071fdead"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240326.0.210346/kopia-20240326.0.210346-linux-arm64.tar.gz"
    sha256 "97a561304b4e67e12eae0dec1b26e19aec5ac272f55a6bb747ec064abee3d569"
  end

  def install
    bin.install "kopia"
  end
end
