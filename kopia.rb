# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20250203.0.153817"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250203.0.153817/kopia-20250203.0.153817-macOS-x64.tar.gz"
    sha256 "5c9a524f23723272861fefa8cd9bb1c8cc93bdfca73cabba553c1eadc1d7d634"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250203.0.153817/kopia-20250203.0.153817-macOS-arm64.tar.gz"
    sha256 "7a2f6f47fc0ed290772d9d68591c372ef6777b9b2117a19fe342150e7cfffd82"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250203.0.153817/kopia-20250203.0.153817-linux-x64.tar.gz"
    sha256 "d87230ccae51db09c325a07eb65a38944cf5a2cfa734aa19df17b3627d245fcd"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250203.0.153817/kopia-20250203.0.153817-linux-arm.tar.gz"
    sha256 "ed29a69bcee6f8eedd615ea19f5a5d83f37bac818b6d1e554f95fc085ccb1b7d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20250203.0.153817/kopia-20250203.0.153817-linux-arm64.tar.gz"
    sha256 "d37d6c08c4826543fe222bf23a4356b6b4b5db74698fe148a1aefd734ef47d78"
  end

  def install
    bin.install "kopia"
  end
end
