# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250502.0.21407"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.21407/kopia-20250502.0.21407-macOS-x64.tar.gz"
    sha256 "df283310030779c33cb5806bacdb0ace0887bdb8b9d1f4e8412275f03912ed83"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.21407/kopia-20250502.0.21407-macOS-arm64.tar.gz"
    sha256 "88518aead63678d775874666e7b99c05fdf5fb7ec1e83e305962e610f65d0811"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.21407/kopia-20250502.0.21407-linux-x64.tar.gz"
    sha256 "7eb7acd73ad4dae69547fac3080b2e12370d4a8dcf1cba9a9eddd3cdd9cd04b7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.21407/kopia-20250502.0.21407-linux-arm.tar.gz"
    sha256 "5e7baaa86a78271ec3caf6b3e85ac85150ccf099263998b9693e164a444b5775"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250502.0.21407/kopia-20250502.0.21407-linux-arm64.tar.gz"
    sha256 "2178bd5dcb05ff430fdca24ac1eac8742dec878df4a23481704c518a6c2e1a1d"
  end

  def install
    bin.install "kopia"
  end
end
