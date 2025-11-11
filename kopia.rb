# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20251111.0.2843"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.2843/kopia-20251111.0.2843-macOS-x64.tar.gz"
    sha256 "9d982882438b65a59d9bf18ca21bd96b8b889f42736fbdf25759234dabb0e028"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.2843/kopia-20251111.0.2843-macOS-arm64.tar.gz"
    sha256 "22157e4815144317ad910322a630a194fbfd8de1277109c1501cf338eef41d1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.2843/kopia-20251111.0.2843-linux-x64.tar.gz"
    sha256 "bb093b6b92a750851f6a7182fea84c56cd45f5243a574f940c9f300b0b1b0fc9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.2843/kopia-20251111.0.2843-linux-arm.tar.gz"
    sha256 "1bee04f787790004e84c9d8b457eb76ed28d07ed0c4864ed98f5409869662476"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20251111.0.2843/kopia-20251111.0.2843-linux-arm64.tar.gz"
    sha256 "40d78f6b01a66687a091215c5dfdf0aa4cb68739e31f4d97253f39442ee26df8"
  end

  def install
    bin.install "kopia"
  end
end
