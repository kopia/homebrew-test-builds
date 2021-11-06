# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211106.0.110604"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.110604/kopia-20211106.0.110604-macOS-x64.tar.gz"
    sha256 "92c1d49fe8c4cbf8ae6bdbcd2da0a981ee9b43dccca857d263961f55bd25f863"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.110604/kopia-20211106.0.110604-macOS-arm64.tar.gz"
    sha256 "0e42ebf62f8e4d546f7698238d11417d9320dc7853436d4297b661b713daa105"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.110604/kopia-20211106.0.110604-linux-x64.tar.gz"
    sha256 "d48e861379fc6ed864e6261a89194fa47c2ca29ae330fcf464ebc5b190b4f1f6"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.110604/kopia-20211106.0.110604-linux-arm.tar.gz"
    sha256 "aba5c995a68742c6878aa8aebc79cff896d0c1c6e88393013ae292d073c2bdc5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211106.0.110604/kopia-20211106.0.110604-linux-arm64.tar.gz"
    sha256 "657a421ed313ade2201469e1ed5d7cccf212700376ee0fdad36920d30276d825"
  end

  def install
    bin.install "kopia"
  end
end
