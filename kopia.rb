# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220506.0.211612"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220506.0.211612/kopia-20220506.0.211612-macOS-x64.tar.gz"
    sha256 "ce24219dd9b10a55fa92ba573ae69f064c338ef8a9e613023ed24a6a26797790"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220506.0.211612/kopia-20220506.0.211612-macOS-arm64.tar.gz"
    sha256 "486455c3c33af31194de9b14dcff1ca35f41ea56d5d99f33cc3e55f1c3a8fb0f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220506.0.211612/kopia-20220506.0.211612-linux-x64.tar.gz"
    sha256 "596420559a0042996e36ee36c51d29a0a6ecc65e78c8e55370056c51e81a4620"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220506.0.211612/kopia-20220506.0.211612-linux-arm.tar.gz"
    sha256 "dbd3b728910caacd97334bca15d5d88e653510606dedabc8a993a5ae1d04b6cb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220506.0.211612/kopia-20220506.0.211612-linux-arm64.tar.gz"
    sha256 "6ae6524aa09c397ae660b09dd881a1a4843b4276e6d04514b67dbeef9a650a5a"
  end

  def install
    bin.install "kopia"
  end
end
