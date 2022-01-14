# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220113.0.193523"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.193523/kopia-20220113.0.193523-macOS-x64.tar.gz"
    sha256 "59e503c4113e29c7c8c08a0aa85bf31d14273030368052914d2519c063d49407"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.193523/kopia-20220113.0.193523-macOS-arm64.tar.gz"
    sha256 "0bea3abfd72c44f235c4c93141f50de784741b16fe7e8f178c2bf1300c78b288"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.193523/kopia-20220113.0.193523-linux-x64.tar.gz"
    sha256 "00aebdd0c4185027707fab6eed564a662ebea0f57e5fea8397db6b42e2187e91"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.193523/kopia-20220113.0.193523-linux-arm.tar.gz"
    sha256 "6f89289dfb8118f3e8d64582ae7c1622abd181a9dc6281f6bbfbaa9d02e94dfe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220113.0.193523/kopia-20220113.0.193523-linux-arm64.tar.gz"
    sha256 "abc3c8d1e07fab8cfd25a05235b96644da73b3a11f406eaa2873834e8f49d96f"
  end

  def install
    bin.install "kopia"
  end
end
