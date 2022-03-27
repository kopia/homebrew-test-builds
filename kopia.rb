# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20220327.0.194640"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.194640/kopia-20220327.0.194640-macOS-x64.tar.gz"
    sha256 "e2419381eb58818b6aa127353bdd15ec15ddaa518a513d9260d48efa37592184"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.194640/kopia-20220327.0.194640-macOS-arm64.tar.gz"
    sha256 "0403975e2ff20dd4382abc88e6c67f396806cc682733c0fdce2671954738b4cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.194640/kopia-20220327.0.194640-linux-x64.tar.gz"
    sha256 "84e697a7caf7286b3f7fab34fc1090244fa5709895b33dde41d49e23224a7c28"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.194640/kopia-20220327.0.194640-linux-arm.tar.gz"
    sha256 "9fd6d5a53fbe1d8d5341264d234e22ffcf9d4b410e7271c5a3abd9221f7a1f53"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20220327.0.194640/kopia-20220327.0.194640-linux-arm64.tar.gz"
    sha256 "2e653dd52c8ffd33395f812f464f723bafae33cd8a3053a297cba2dfd7159592"
  end

  def install
    bin.install "kopia"
  end
end
