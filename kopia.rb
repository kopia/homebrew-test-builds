# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220809.0.94418"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.94418/kopia-20220809.0.94418-macOS-x64.tar.gz"
    sha256 "f90ffaa2a3211311340f61b8eb8ebfa03b7060ffce0334fe6cb926efa6808b18"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.94418/kopia-20220809.0.94418-macOS-arm64.tar.gz"
    sha256 "9f570b0c3caea6736eed00490c86de90cbedcb0d8f45f98da7e01bcda91eb283"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.94418/kopia-20220809.0.94418-linux-x64.tar.gz"
    sha256 "90959fea851e2f97523b6f93f72c9f5a6725408218d95c1acf1a05d6dfcd29b9"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.94418/kopia-20220809.0.94418-linux-arm.tar.gz"
    sha256 "94bc0693509c00d1559fbff2e4eac506831500a5f40b67e0073abcc49f0f092d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220809.0.94418/kopia-20220809.0.94418-linux-arm64.tar.gz"
    sha256 "688ff93f1ea09f4dccaf7a364b3448ccdf3c81ca9ed783b27917f2c3adf71a2f"
  end

  def install
    bin.install "kopia"
  end
end
