# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240501.0.143346"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.143346/kopia-20240501.0.143346-macOS-x64.tar.gz"
    sha256 "d2f6aa9204bbb2e1c839e556ee502d3d52e8545e2edc9d26a9d236a12a212484"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.143346/kopia-20240501.0.143346-macOS-arm64.tar.gz"
    sha256 "67006566ae09de7ebb3af3d2baa53c21f1cb360c52dab467aca3ecd8a59fbc96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.143346/kopia-20240501.0.143346-linux-x64.tar.gz"
    sha256 "207928ad3d7037e674db140fc7cdfa12bf8928f7aede8fd204fc242581c7b1f0"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.143346/kopia-20240501.0.143346-linux-arm.tar.gz"
    sha256 "eccdf53b4508e1b679b387fc0aa6123dcedef13c8032dc8744d68a718872229d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240501.0.143346/kopia-20240501.0.143346-linux-arm64.tar.gz"
    sha256 "4f73fe2e859753b7b6459b09212de2522f6ca3c537e86bf29edc1ef7981c010c"
  end

  def install
    bin.install "kopia"
  end
end
