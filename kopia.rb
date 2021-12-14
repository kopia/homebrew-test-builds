# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211213.0.170222"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.170222/kopia-20211213.0.170222-macOS-x64.tar.gz"
    sha256 "ece0fc4f06c1635521bffea04e40214db23afd36d569c608e35068f2662d2b80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.170222/kopia-20211213.0.170222-macOS-arm64.tar.gz"
    sha256 "4a4f4f3a0b6caa881cc1c71d9093b40762f7355b4f1b8765ec5ed21a08d693ae"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.170222/kopia-20211213.0.170222-linux-x64.tar.gz"
    sha256 "6e95f94b6a4b7f64cc7ddf18c32901355762bf5f2f13ab1aeecabd9b1f639f85"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.170222/kopia-20211213.0.170222-linux-arm.tar.gz"
    sha256 "a673a4fa02897fb8931c1916b6f8d8c79c91d3220e09447d7f625bf9ff35fedf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211213.0.170222/kopia-20211213.0.170222-linux-arm64.tar.gz"
    sha256 "31ded408121b8a78537e241a2025e3759031d2c820abda934ec428a1c37a4724"
  end

  def install
    bin.install "kopia"
  end
end
