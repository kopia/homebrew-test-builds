# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250610.0.30421"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250610.0.30421/kopia-20250610.0.30421-macOS-x64.tar.gz"
    sha256 "78e21b63411c40272978d56b721f7a69f94610c93ab5db6481412a58979344bb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250610.0.30421/kopia-20250610.0.30421-macOS-arm64.tar.gz"
    sha256 "75e7aebdf7c2f91a356b501dd174f1dffb0b69edb7042ec3cc62c6935e7e2239"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250610.0.30421/kopia-20250610.0.30421-linux-x64.tar.gz"
    sha256 "effca4c463d887571d160e49c4b04897fa2e6417e68430257859e0ecc42891d8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250610.0.30421/kopia-20250610.0.30421-linux-arm.tar.gz"
    sha256 "b0cf649b26944c1b69221114515065580a577643f0ea0ea0596327d9c8472c7d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250610.0.30421/kopia-20250610.0.30421-linux-arm64.tar.gz"
    sha256 "fda866d4321c753f62fa4c54ab76401cad0193ebf4593e52d48f1412660faa90"
  end

  def install
    bin.install "kopia"
  end
end
