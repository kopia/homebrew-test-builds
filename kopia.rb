# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240502.0.103440"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.103440/kopia-20240502.0.103440-macOS-x64.tar.gz"
    sha256 "77de0cda7221fcf066ba338f9e4f1762112b5084869cec1ebb30df654851b229"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.103440/kopia-20240502.0.103440-macOS-arm64.tar.gz"
    sha256 "8b05aad01bc4fd072b937eb2f203075f508b46dafe2790f1e103658ea26c68d4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.103440/kopia-20240502.0.103440-linux-x64.tar.gz"
    sha256 "d7074985759c9a7bee836f1f6f6bd33079adade9748a40c09713b4fab5f3fa94"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.103440/kopia-20240502.0.103440-linux-arm.tar.gz"
    sha256 "d721d4126e48279f194d0f1d1eb99284266e461e3960022099fe5420e33efcc8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240502.0.103440/kopia-20240502.0.103440-linux-arm64.tar.gz"
    sha256 "82bfeba42171ccb1274575ea5d21b6d28ba6f942a6b9bc4bfc67d6ae5107b8da"
  end

  def install
    bin.install "kopia"
  end
end
