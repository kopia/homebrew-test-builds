# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250426.0.200120"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250426.0.200120/kopia-20250426.0.200120-macOS-x64.tar.gz"
    sha256 "d9a1f523d14daf1b55ff4d81f664d34f989bc58b16291c1c3b91690bb9643a34"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250426.0.200120/kopia-20250426.0.200120-macOS-arm64.tar.gz"
    sha256 "dbb58dc529af54a25b899472ff4a543e84eac09214e1480dd92a8f498129ecdd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250426.0.200120/kopia-20250426.0.200120-linux-x64.tar.gz"
    sha256 "9c304791abca95cc09a97876f4ef36c6c7d23086bbd8884c36bbb3f0ad41f91e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250426.0.200120/kopia-20250426.0.200120-linux-arm.tar.gz"
    sha256 "427b9d9737be584c4df127e48b62d4afce9743847724fdca1b050a0276004a09"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250426.0.200120/kopia-20250426.0.200120-linux-arm64.tar.gz"
    sha256 "f39370063ef9b66c80a0e2b0d9855aebab526413e171ef522b5e529baf081440"
  end

  def install
    bin.install "kopia"
  end
end
