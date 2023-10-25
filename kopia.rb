# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231025.0.151109"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231025.0.151109/kopia-20231025.0.151109-macOS-x64.tar.gz"
    sha256 "394bb0a61b9e89d92028d78d3dcaeaa7eeb51596b8d5598e3f37e801fcc4f08d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231025.0.151109/kopia-20231025.0.151109-macOS-arm64.tar.gz"
    sha256 "435ff3e50d188d5906c1d9f2c29ba2387f7eddf83a1a8be92acdec6f4540d42d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231025.0.151109/kopia-20231025.0.151109-linux-x64.tar.gz"
    sha256 "1d11568b67e7ca260fc660a1a5338079fe2a4826d6af1f9d753bb6ed3c5c22b8"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231025.0.151109/kopia-20231025.0.151109-linux-arm.tar.gz"
    sha256 "12c04e399d6eb968094b54ee6279885751b1234dd10dae327d9e08464bc371bb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231025.0.151109/kopia-20231025.0.151109-linux-arm64.tar.gz"
    sha256 "2589acc843cdc74100080f95e360e5e5f09b853827dd3993d6492c4fc644f113"
  end

  def install
    bin.install "kopia"
  end
end
