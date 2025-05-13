# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250513.0.2444"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.2444/kopia-20250513.0.2444-macOS-x64.tar.gz"
    sha256 "05b58434cbad043f0526bfd73639260ce1cb7dcf83f11836202c96f02101fc75"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.2444/kopia-20250513.0.2444-macOS-arm64.tar.gz"
    sha256 "c60990daf906b900677541f1eb5ce129354a8172a79df0a81b0c468cd53362fd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.2444/kopia-20250513.0.2444-linux-x64.tar.gz"
    sha256 "7e782983001e5fa8c721a9096a8fd3c218c1b5c5ec081e8cb5f3fffd6db635d6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.2444/kopia-20250513.0.2444-linux-arm.tar.gz"
    sha256 "3bf751a145d06f9527f91959d73501955c68a0a335e6ed986cd930e1145f2435"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250513.0.2444/kopia-20250513.0.2444-linux-arm64.tar.gz"
    sha256 "1ca67c384006eb0c43498b96d92dd77a09f5b696a70828720fd8ddaf59bbca50"
  end

  def install
    bin.install "kopia"
  end
end
