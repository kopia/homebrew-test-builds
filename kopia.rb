# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240207.0.55731"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.55731/kopia-20240207.0.55731-macOS-x64.tar.gz"
    sha256 "5725d716c6077d375edf99f51335739c18eef3d8d08f4b8b465b7be790a954f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.55731/kopia-20240207.0.55731-macOS-arm64.tar.gz"
    sha256 "7f9b640b461c323bdb0c7234d9dab0df739d36081dd8a320d27d1094a229480b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.55731/kopia-20240207.0.55731-linux-x64.tar.gz"
    sha256 "f1daee94e4600174df71cc23cf160ff5ea939c894402f16991bf03cf3a1dd915"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.55731/kopia-20240207.0.55731-linux-arm.tar.gz"
    sha256 "204e8024874e8abe686c854b64213650ca7b98cbf0d07b84e4c9008635e937c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240207.0.55731/kopia-20240207.0.55731-linux-arm64.tar.gz"
    sha256 "591c2a82cb41bed7b892184defefd33cb988011037e42ebed1d8f25ae6e2df75"
  end

  def install
    bin.install "kopia"
  end
end
