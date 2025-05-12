# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250512.0.53957"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.53957/kopia-20250512.0.53957-macOS-x64.tar.gz"
    sha256 "890e396d0f52683577797e795cd38a36de35d062ec76ed3a30a54e10e3a650c9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.53957/kopia-20250512.0.53957-macOS-arm64.tar.gz"
    sha256 "77c6360893427d97a621fb2a04207fb26b85a4a7ef38844c24df6cf552d8af5e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.53957/kopia-20250512.0.53957-linux-x64.tar.gz"
    sha256 "4f6b2a600cc45b1ba253ce65e4f80baa3981de4300b08cd1a14a60341bb772fe"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.53957/kopia-20250512.0.53957-linux-arm.tar.gz"
    sha256 "30d18fb519f1b37a8370896a44abd76118bfad87eed9e3d852b1d058902dc3a5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250512.0.53957/kopia-20250512.0.53957-linux-arm64.tar.gz"
    sha256 "e4610772b18a96e8aff0117ce733bd471c6f379391999e1005a3145e74897856"
  end

  def install
    bin.install "kopia"
  end
end
