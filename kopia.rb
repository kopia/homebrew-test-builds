# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211018.0.225511"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.225511/kopia-20211018.0.225511-macOS-x64.tar.gz"
    sha256 "9b8d504db7dcf2e7f5ad8631bbad720156354b8608b7e2148f4cd2fa88551ed5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.225511/kopia-20211018.0.225511-macOS-arm64.tar.gz"
    sha256 "0fac5b87808e3cefc3b47ef027ec4fbad86fd67cfa1ca9142f506c514f8f2379"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.225511/kopia-20211018.0.225511-linux-x64.tar.gz"
    sha256 "914adc7e40f68059865d34ef9eca3a33a875aff4aa915b84970f7b40d943f0c1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.225511/kopia-20211018.0.225511-linux-arm.tar.gz"
    sha256 "13c2298e152062a88c951d95394b51feb65c79c5a4e5ccc313d72001e8d16065"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211018.0.225511/kopia-20211018.0.225511-linux-arm64.tar.gz"
    sha256 "46e29816b93d2cbf78f2219b3ff5cd6433d0e41f24efa98efb8f5a548a764e3d"
  end

  def install
    bin.install "kopia"
  end
end
