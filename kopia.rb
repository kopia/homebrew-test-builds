# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250722.0.5129"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250722.0.5129/kopia-20250722.0.5129-macOS-x64.tar.gz"
    sha256 "2dc02ad058b65db28db075f5443252f69a34c69372e23f34a1a9e00da2d8060f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250722.0.5129/kopia-20250722.0.5129-macOS-arm64.tar.gz"
    sha256 "e3577733dadd9bd09fdf63cc6968192a5055a195c5b68e727e8fb8708c2e758a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250722.0.5129/kopia-20250722.0.5129-linux-x64.tar.gz"
    sha256 "b1a1685053b2600611023060f498a851d0147f52a856b0afe4d079a5191e6e89"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250722.0.5129/kopia-20250722.0.5129-linux-arm.tar.gz"
    sha256 "c0edba5fef99a8481ac84e5e2beacbd06dfe0bc885c9ef32725e809265146176"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250722.0.5129/kopia-20250722.0.5129-linux-arm64.tar.gz"
    sha256 "f2f33f83356760d50bacb418f08c4c459990090462b80a9e14f69f1eb4d43e2e"
  end

  def install
    bin.install "kopia"
  end
end
