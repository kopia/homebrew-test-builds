# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250329.0.230855"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.230855/kopia-20250329.0.230855-macOS-x64.tar.gz"
    sha256 "be2c3a3b104596629e82f2d98c3285dcf4abd50a034e8e5fcfbae062808f7801"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.230855/kopia-20250329.0.230855-macOS-arm64.tar.gz"
    sha256 "8d9341ce5797bd0c864cea8efdd06082709ddb7bfd7e2cddbaa37d9b26ed4355"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.230855/kopia-20250329.0.230855-linux-x64.tar.gz"
    sha256 "62d98bb5370b4f363a0749f93d9f82c0e671a4c61f874d2dfafacc8428908923"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.230855/kopia-20250329.0.230855-linux-arm.tar.gz"
    sha256 "7ac8b6651d5a5f3d13aac60e295ab36005942ef40bb3de11a055cf64fab5e608"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250329.0.230855/kopia-20250329.0.230855-linux-arm64.tar.gz"
    sha256 "c564fb63953da559b980c6216e62b38cdb54b01ea2f0cc69e54136a2bbd664b4"
  end

  def install
    bin.install "kopia"
  end
end
