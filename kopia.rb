# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.54737"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.54737/kopia-20250602.0.54737-macOS-x64.tar.gz"
    sha256 "3c75f049a4e5cd4d149fae020cca97a49ddbbf15a3a6e880ae11bb959a1c0f0b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.54737/kopia-20250602.0.54737-macOS-arm64.tar.gz"
    sha256 "91f62fbc0e4dbafb28dba509b283049036bb515849a7dc725dfd0ce55a2cfe27"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.54737/kopia-20250602.0.54737-linux-x64.tar.gz"
    sha256 "b9fca7e3acad2a07a67b6ad58bd713dc21c63fe79d0790c0a36308b030f5eb0a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.54737/kopia-20250602.0.54737-linux-arm.tar.gz"
    sha256 "e1cea3a51b25297a236fc5d742544595c93a0a2b52ec151ae30a5483b1e064d7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.54737/kopia-20250602.0.54737-linux-arm64.tar.gz"
    sha256 "8996da3fb88d62c7ae68e087aa7d2b8b8dc4c0bc8c6496b219fca318e5e03b86"
  end

  def install
    bin.install "kopia"
  end
end
