# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241016.0.114319"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.114319/kopia-20241016.0.114319-macOS-x64.tar.gz"
    sha256 "b9be9c032a86aa8564d2eaa2fd96491833c8b24d90741804147ade1ec5f1bbf8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.114319/kopia-20241016.0.114319-macOS-arm64.tar.gz"
    sha256 "3a7e48f62ed10979296f36e56ce15b25a01566869e6f8a16f6199daba53deb02"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.114319/kopia-20241016.0.114319-linux-x64.tar.gz"
    sha256 "c1cea1b7b620a47dac8a4f176eda0117642d757a55a34046200035aefbdf0d94"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.114319/kopia-20241016.0.114319-linux-arm.tar.gz"
    sha256 "e3f9db782b304b1102b7f8a3e5361a821f0f2aecda6b845f11b82f4679432e60"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241016.0.114319/kopia-20241016.0.114319-linux-arm64.tar.gz"
    sha256 "500a10bd6240b2fa1dbf7bf2c7224137853aa9aa12a3ca5a3b31941a4b41e844"
  end

  def install
    bin.install "kopia"
  end
end
