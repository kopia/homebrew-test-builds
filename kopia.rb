# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211120.0.205325"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.205325/kopia-20211120.0.205325-macOS-x64.tar.gz"
    sha256 "cb142005a8c6405792eebcaa97efa43649e094285e3fa2ed712df6cc63270515"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.205325/kopia-20211120.0.205325-macOS-arm64.tar.gz"
    sha256 "2e77c770cc5452ac0a6662bf011b54df23e34b72a6830377a5575dced66f18a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.205325/kopia-20211120.0.205325-linux-x64.tar.gz"
    sha256 "63c089cb9fec468d57cfbb8867c385fec16ee82a77d066c0e8173e2edd93b2f7"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.205325/kopia-20211120.0.205325-linux-arm.tar.gz"
    sha256 "feab4dfa013ebc20d4b0621013f2d294ca02541177ba0573a3c5303d2296a6f6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211120.0.205325/kopia-20211120.0.205325-linux-arm64.tar.gz"
    sha256 "e3fba5a04e1bd6274f6fd7275c461d3c4170184c4d6630b3ca830a0a5b4423dd"
  end

  def install
    bin.install "kopia"
  end
end
