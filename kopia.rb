# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211106.0.230800"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.230800/kopia-20211106.0.230800-macOS-x64.tar.gz"
    sha256 "7fdd0fe1dbfcc02a4eaede7b1f8c5d217b1dfb53a369b6b24092f191be0010f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.230800/kopia-20211106.0.230800-macOS-arm64.tar.gz"
    sha256 "e9253f7119f56ebd84d430abbcf871a3961b2be5c377a6c990ff46af40e169f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.230800/kopia-20211106.0.230800-linux-x64.tar.gz"
    sha256 "b7773b972bdca88fe8ab624487d21be7b4ba412158ad34771b9a89741034c45d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.230800/kopia-20211106.0.230800-linux-arm.tar.gz"
    sha256 "d26edfe5d04ab887de8cc643c037976d599848d3630a0b182ae3bc485a158c56"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.230800/kopia-20211106.0.230800-linux-arm64.tar.gz"
    sha256 "5abca58a4f359631b2558484b05d9b3c7f51529460b6cfc37d8e3173757d164e"
  end

  def install
    bin.install "kopia"
  end
end
