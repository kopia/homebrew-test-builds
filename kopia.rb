# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211107.0.85910"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85910/kopia-20211107.0.85910-macOS-x64.tar.gz"
    sha256 "30f3186893f53596ce58deba66504ce4a36ab4caaa56e711a18eb2213ef53603"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85910/kopia-20211107.0.85910-macOS-arm64.tar.gz"
    sha256 "44583b482d1394162963f915886db94d550846164950a796febb1b588b8f3036"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85910/kopia-20211107.0.85910-linux-x64.tar.gz"
    sha256 "9e5a902f13ced06585ae6898280639685c1b4f292d76f6953953c8496dda8ca6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85910/kopia-20211107.0.85910-linux-arm.tar.gz"
    sha256 "eaf83cf7b1c03e31d18b1d3444a32c5209a65c5d29813e36f3a48568b34b07cc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211107.0.85910/kopia-20211107.0.85910-linux-arm64.tar.gz"
    sha256 "18eb9507e95f65bd038b0575145090cbd9aa1af4be76b9fc0ba996f9ba334b36"
  end

  def install
    bin.install "kopia"
  end
end
