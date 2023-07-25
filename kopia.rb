# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230724.0.174819"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230724.0.174819/kopia-20230724.0.174819-macOS-x64.tar.gz"
    sha256 "6a6b0513658d64233e8ea270810fd5279f3091cdb8d45c27161f3250824732d2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230724.0.174819/kopia-20230724.0.174819-macOS-arm64.tar.gz"
    sha256 "ac31a836af27a82618facca36afe36837e98438948a8b8b85fbd13f87667a03d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230724.0.174819/kopia-20230724.0.174819-linux-x64.tar.gz"
    sha256 "08ac6610b0dc24f89fb5fbaf2869315e93970573c4010d2c5ca70669bb2db36b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230724.0.174819/kopia-20230724.0.174819-linux-arm.tar.gz"
    sha256 "a254af3d3d68ce3989605dfb0510c75dcc413bafa9d01389fabe4bb59a2b92ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230724.0.174819/kopia-20230724.0.174819-linux-arm64.tar.gz"
    sha256 "fa7be27a94d7b1caa58cff3af90885e59a9f9431884ba5c76e17c712bda7c971"
  end

  def install
    bin.install "kopia"
  end
end
