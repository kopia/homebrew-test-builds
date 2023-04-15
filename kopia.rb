# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230414.0.191610"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.191610/kopia-20230414.0.191610-macOS-x64.tar.gz"
    sha256 "b621fbc1498fc468a2e9ab0af05d16db25f7cfad9de02a8cacc00ca3ffdd5e94"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.191610/kopia-20230414.0.191610-macOS-arm64.tar.gz"
    sha256 "7d73db14b2b2e5e1255810f8d3bd5a1b69634888ca2e64a7e5dd4f94d8303e9f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.191610/kopia-20230414.0.191610-linux-x64.tar.gz"
    sha256 "9bf5303c020608f35c16f5d9f473c4dd7386633c36c3f8288183de2821ee3ab2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.191610/kopia-20230414.0.191610-linux-arm.tar.gz"
    sha256 "fe349ce34812d241f8f4312965855dcfd04bcde49ce2995dc01b316970ce1d31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230414.0.191610/kopia-20230414.0.191610-linux-arm64.tar.gz"
    sha256 "c76865cb80bef60c7218551b4a0258ce2121377e60458e66bce3fea7249cf7cf"
  end

  def install
    bin.install "kopia"
  end
end
