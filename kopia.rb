# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240507.0.120240"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240507.0.120240/kopia-20240507.0.120240-macOS-x64.tar.gz"
    sha256 "619ce90807abfac08083fc44406ef7786102b38f7e328704f33caa828a456113"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240507.0.120240/kopia-20240507.0.120240-macOS-arm64.tar.gz"
    sha256 "62e40684c26a86454354c9a3c2d5543eef8e751e571ebc7c34756f44405f097a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240507.0.120240/kopia-20240507.0.120240-linux-x64.tar.gz"
    sha256 "e321e5df6cc66f9f334792540bbe7c56c01406acd78dbf9ebf3185821a76c81a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240507.0.120240/kopia-20240507.0.120240-linux-arm.tar.gz"
    sha256 "60f9d4046b2ad42bc393e88843d7a2fb9e8d1b27391a3003f3beb893c05ae9e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240507.0.120240/kopia-20240507.0.120240-linux-arm64.tar.gz"
    sha256 "8a8b303426864b2b59a25e9424543c1182af61984bdea660c27660bfa4598453"
  end

  def install
    bin.install "kopia"
  end
end
