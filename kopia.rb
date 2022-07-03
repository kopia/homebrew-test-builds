# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220703.0.190614"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.190614/kopia-20220703.0.190614-macOS-x64.tar.gz"
    sha256 "f6866126f8695ca2dfbad6745b67cf20e01630c0ce5cb8db8eb92417430adfaa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.190614/kopia-20220703.0.190614-macOS-arm64.tar.gz"
    sha256 "c0444adc49fe0b58ea854c7196bf7b708c3945ee89fee3cb9fbcc101e64614da"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.190614/kopia-20220703.0.190614-linux-x64.tar.gz"
    sha256 "1615323bade2f45aa2152774011ac9ea79f95a4d9bde72c6878dd22db4444fe3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.190614/kopia-20220703.0.190614-linux-arm.tar.gz"
    sha256 "abf1b1527e2ac592a0f7ece3ef1cb1785789cbaef6137c1c1f7980f19f5e19da"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220703.0.190614/kopia-20220703.0.190614-linux-arm64.tar.gz"
    sha256 "2a2aa493259e44908a3cb2bbf896333aca535f54e4cdee5789d3f7c7969f1a88"
  end

  def install
    bin.install "kopia"
  end
end
