# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220205.0.224354"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220205.0.224354/kopia-20220205.0.224354-macOS-x64.tar.gz"
    sha256 "9e87f8186b6150f075868ba6725648bc1e0494f4bdf211148fc13d8a5aec5ada"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220205.0.224354/kopia-20220205.0.224354-macOS-arm64.tar.gz"
    sha256 "5c56cf897480ea69e2f6967e4cdbcce7e596354911dc3a7337e486025734a10c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220205.0.224354/kopia-20220205.0.224354-linux-x64.tar.gz"
    sha256 "3c7bbd3b1ff6e850f150dd0d8d9630a81d07bd6ae7b567379959656c11c09832"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220205.0.224354/kopia-20220205.0.224354-linux-arm.tar.gz"
    sha256 "87bd78e8e94c9496061b0f31326fd8c3e08cfc277063ef4871e21765801bad8c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220205.0.224354/kopia-20220205.0.224354-linux-arm64.tar.gz"
    sha256 "5e945c2356d7d43f2051ab12607fd0a1a2187986341cce6d7b564287468ed338"
  end

  def install
    bin.install "kopia"
  end
end
