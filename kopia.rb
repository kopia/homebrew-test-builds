# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230331.0.143234"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.143234/kopia-20230331.0.143234-macOS-x64.tar.gz"
    sha256 "916608dacf82653fdba609ea3bb13fa2af3664e3008a57558b77e4b96dd1f4c4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.143234/kopia-20230331.0.143234-macOS-arm64.tar.gz"
    sha256 "b885a82742d74ab6cef709b471dfa1d2a4b767ee9d962a000ffd18bd66ca4373"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.143234/kopia-20230331.0.143234-linux-x64.tar.gz"
    sha256 "45a9476a29008e80b33e39918e552abb4399ec585cb4d4167a55f0c41fceb26b"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.143234/kopia-20230331.0.143234-linux-arm.tar.gz"
    sha256 "344e72fcd62b10cbc4a0e51b9b62e4258898271329ffd329ea04de562ce1bee5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230331.0.143234/kopia-20230331.0.143234-linux-arm64.tar.gz"
    sha256 "8f9692f479fc9f2d46dde21840e819ada401c9405603baad3f080b3813c2813a"
  end

  def install
    bin.install "kopia"
  end
end
