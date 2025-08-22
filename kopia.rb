# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250822.0.43056"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.43056/kopia-20250822.0.43056-macOS-x64.tar.gz"
    sha256 "a8c65525a5e614b37cf5bad9ac2efdabb83089a43ae7cf86d40930c17ef6d349"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.43056/kopia-20250822.0.43056-macOS-arm64.tar.gz"
    sha256 "fba6e8782133654b95f1134be5d0e04fd0cc68afa2cd4f5f62a12eece83d1cfe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.43056/kopia-20250822.0.43056-linux-x64.tar.gz"
    sha256 "c29de997554fecef67e218ccd31e921a720f5d3f1e60ea701aef88d2370e1962"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.43056/kopia-20250822.0.43056-linux-arm.tar.gz"
    sha256 "e1b7e0b5ea3c15e51e3cf2f7726890a625cf6ae12049ccb1ccfc2b8cd5e14a07"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250822.0.43056/kopia-20250822.0.43056-linux-arm64.tar.gz"
    sha256 "96081cd1d82b1063eb59ff56118ecfb8e5784f8e9fdcc4457cd12906f0f666f3"
  end

  def install
    bin.install "kopia"
  end
end
