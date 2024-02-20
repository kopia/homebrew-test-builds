# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240219.0.214147"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240219.0.214147/kopia-20240219.0.214147-macOS-x64.tar.gz"
    sha256 "fc6989812cf38bc513bf6e3d21dc8f85d2659880784b8fe99b76cc19cefe7b31"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240219.0.214147/kopia-20240219.0.214147-macOS-arm64.tar.gz"
    sha256 "8da964da054f3d991140281820d5cecc33665b9f527673b444747021adf5977b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240219.0.214147/kopia-20240219.0.214147-linux-x64.tar.gz"
    sha256 "4672535b70041420310238c84c3611f9c477974fbe13e76ad43484f78440fcbd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240219.0.214147/kopia-20240219.0.214147-linux-arm.tar.gz"
    sha256 "19eefa0bac7f8016ac8fc2ff5fcc854cc395422483c76b189d9147922b200351"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240219.0.214147/kopia-20240219.0.214147-linux-arm64.tar.gz"
    sha256 "551dfd9946532887d51d9f69954ca8421fb204ea370f4349127d51a8ca93295f"
  end

  def install
    bin.install "kopia"
  end
end
