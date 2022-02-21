# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220221.0.143859"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.143859/kopia-20220221.0.143859-macOS-x64.tar.gz"
    sha256 "83d84d6d789fc5d7c4cc86762c0ff7875de48fcf4e0171749f67ed5887bac3f4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.143859/kopia-20220221.0.143859-macOS-arm64.tar.gz"
    sha256 "78e38654f156f4710d139d1e6acb45e94227e6d53c83e19a62e9d574101765bd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.143859/kopia-20220221.0.143859-linux-x64.tar.gz"
    sha256 "26bf04e795ffdfe5f9cf7f559b3c879fdf286c4149d56960cb6714aa4e6d6f06"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.143859/kopia-20220221.0.143859-linux-arm.tar.gz"
    sha256 "c1c43187f56489194331db25c8f9e77cb348e5198b59343688fea0a3f1ea1cbe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220221.0.143859/kopia-20220221.0.143859-linux-arm64.tar.gz"
    sha256 "36993962fd25b5fb08d166255dda84dfb0e3549d82a41ec8ba0b101b556e5111"
  end

  def install
    bin.install "kopia"
  end
end
