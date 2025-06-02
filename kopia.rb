# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250602.0.12921"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.12921/kopia-20250602.0.12921-macOS-x64.tar.gz"
    sha256 "afd4dc50305a5667c34767ecb2bc4b5d27d0e1764466afea5326cd44bfbc0199"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.12921/kopia-20250602.0.12921-macOS-arm64.tar.gz"
    sha256 "47524892f76011019ed584744666f2eed1b4041c4215e170ae99fcd1b72a0498"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.12921/kopia-20250602.0.12921-linux-x64.tar.gz"
    sha256 "6fa6ada549e2a5cf585869221834fcbde9130f2fe60cbec20a9414622e8c53b7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.12921/kopia-20250602.0.12921-linux-arm.tar.gz"
    sha256 "3b27b188893e2897ea9a3f8a8447e29dfaea16adfb797e48dc88962e847eab77"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250602.0.12921/kopia-20250602.0.12921-linux-arm64.tar.gz"
    sha256 "432d2594b72a61c4bb9eb9d8cf7c17e13f8e90b042363d4b89cc18b325311334"
  end

  def install
    bin.install "kopia"
  end
end
