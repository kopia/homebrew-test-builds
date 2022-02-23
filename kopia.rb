# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220222.0.222148"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.222148/kopia-20220222.0.222148-macOS-x64.tar.gz"
    sha256 "1e203412703d13d50bfcab9ac5777f5202c78f6a6bb5383115c05491af58e2f2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.222148/kopia-20220222.0.222148-macOS-arm64.tar.gz"
    sha256 "f031573275dbde8d2ff3b4d85f1a82bcbdf7f60c717fdc8da454ec3827afda57"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.222148/kopia-20220222.0.222148-linux-x64.tar.gz"
    sha256 "8b9f422a419a2a7aa84d9838bdc5a4ab44ffe321c28bcee56680cf3e62afadc8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.222148/kopia-20220222.0.222148-linux-arm.tar.gz"
    sha256 "b131809e22796a3c9022c371c8c064f2a8dd7f2cfcdee4e6ec7d0bf2ddd8176d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220222.0.222148/kopia-20220222.0.222148-linux-arm64.tar.gz"
    sha256 "694221833458862e0695b0c8de2d508f44adebc166bd51e8c48d0f7d93d2c692"
  end

  def install
    bin.install "kopia"
  end
end
