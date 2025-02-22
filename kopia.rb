# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250221.0.215722"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250221.0.215722/kopia-20250221.0.215722-macOS-x64.tar.gz"
    sha256 "f19a05779a47b19dc5ae3f4d6b47e1521455c93f3f565fdf8cd051bc96b66636"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250221.0.215722/kopia-20250221.0.215722-macOS-arm64.tar.gz"
    sha256 "f63e4d4e342cc008894d5353c84749b184c79ce893d794895296b24b21f69af4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250221.0.215722/kopia-20250221.0.215722-linux-x64.tar.gz"
    sha256 "840e2b2e67887afdf3da653ce087cde7b74c30e65a89935d8499b5be38228620"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250221.0.215722/kopia-20250221.0.215722-linux-arm.tar.gz"
    sha256 "2b3be6f1e5c12ac9ec340a95d9ecee97f43dd5cdf0143d5f37aa4226c11ecc72"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250221.0.215722/kopia-20250221.0.215722-linux-arm64.tar.gz"
    sha256 "290e3fcd6ebe7c57bbc0aa33fd44a74063b397de88d7717db80ae8f7387054b3"
  end

  def install
    bin.install "kopia"
  end
end
