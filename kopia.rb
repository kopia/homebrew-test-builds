# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240327.0.124953"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.124953/kopia-20240327.0.124953-macOS-x64.tar.gz"
    sha256 "5fd0beef8315f36e314bbff5b22cb59e0ec5759a479c30945b752029b9e1c31d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.124953/kopia-20240327.0.124953-macOS-arm64.tar.gz"
    sha256 "a0be3a862520c646b98288bc18aa2dd68f07629baf118c4302e1c3f877fd7a8f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.124953/kopia-20240327.0.124953-linux-x64.tar.gz"
    sha256 "8a2922418d2e50c3b447072e9f9ccfa1cbfde9939a78828a159a1f91e8e04473"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.124953/kopia-20240327.0.124953-linux-arm.tar.gz"
    sha256 "f79b640a5d5c21736c752435bcc514dc6218ed26d0c7f5997bd1eb60c8cd9e14"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240327.0.124953/kopia-20240327.0.124953-linux-arm64.tar.gz"
    sha256 "15ad3f500de60c620b03da46713cac0fe5e21d089e6d1c2af79296e2b9534f14"
  end

  def install
    bin.install "kopia"
  end
end
