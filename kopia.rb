# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220723.0.65043"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.65043/kopia-20220723.0.65043-macOS-x64.tar.gz"
    sha256 "ce9c12f96700af615c0b1597b6ab83b4ba39229051be2f17a0ee00978b1fd31b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.65043/kopia-20220723.0.65043-macOS-arm64.tar.gz"
    sha256 "f9306a382889663a05dab1646943c1a36cf6e944b26e8ef5029129e7ceeb6941"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.65043/kopia-20220723.0.65043-linux-x64.tar.gz"
    sha256 "f347acfdefee8fe92568cbc801a554873198af020bce32bd53638152a1ab609b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.65043/kopia-20220723.0.65043-linux-arm.tar.gz"
    sha256 "6a35a8f7777c58c638dedb22d1203de4602e4c7e531d47db797d41d0f6806205"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220723.0.65043/kopia-20220723.0.65043-linux-arm64.tar.gz"
    sha256 "143304df2eb6aa6aa2fe8270d14bd86f821c2ff46c5e1d74059d794a4ed6d771"
  end

  def install
    bin.install "kopia"
  end
end
