# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250408.0.181258"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250408.0.181258/kopia-20250408.0.181258-macOS-x64.tar.gz"
    sha256 "e96c951d9ad8e9ae1ab340ada67d50430db225d9a9623e07cbb17ccbdc19367e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250408.0.181258/kopia-20250408.0.181258-macOS-arm64.tar.gz"
    sha256 "55fbe985cc0cf64c55f50d8605a63a5bf1097ca36fc9f9cec33a27189989abaa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250408.0.181258/kopia-20250408.0.181258-linux-x64.tar.gz"
    sha256 "3d8f1877dc00d1b16298b39ff83cb6cf4a2f5bae3d7f75be14ec042724860e03"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250408.0.181258/kopia-20250408.0.181258-linux-arm.tar.gz"
    sha256 "b7c85d7f50430615648c2c4473493469a2ea4705c7a7f15fd34b7cabe412d8fb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250408.0.181258/kopia-20250408.0.181258-linux-arm64.tar.gz"
    sha256 "80f34eae6c039511e3f298e9a842242ec25dea7e23ee2cd855c452ef5d5f2372"
  end

  def install
    bin.install "kopia"
  end
end
