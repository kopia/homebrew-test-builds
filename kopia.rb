# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240805.0.155649"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.155649/kopia-20240805.0.155649-macOS-x64.tar.gz"
    sha256 "a62a284f7c381eb70097f72830fd0435799d2aaeac354f8f03202a4e0f9c1647"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.155649/kopia-20240805.0.155649-macOS-arm64.tar.gz"
    sha256 "196d58797f084971d4284be9f31af4d771046db6679f8dd94fb0970c9310fcd5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.155649/kopia-20240805.0.155649-linux-x64.tar.gz"
    sha256 "c1035d9b7057e36668209e62cdc0c3b361b4e30ec342e3685ac7ee5b9ea9e127"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.155649/kopia-20240805.0.155649-linux-arm.tar.gz"
    sha256 "926a1dd2d09545857620d23ce4ef3875dd49dbdf464b7eb60dfe982c3efb8abe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240805.0.155649/kopia-20240805.0.155649-linux-arm64.tar.gz"
    sha256 "f7815640f8eb8086cdc6cf55662063fb0fafaf3b177a7f0879e291382e9bfa50"
  end

  def install
    bin.install "kopia"
  end
end
