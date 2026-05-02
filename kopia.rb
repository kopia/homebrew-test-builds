# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20260502.0.42513"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260502.0.42513/kopia-20260502.0.42513-macOS-x64.tar.gz"
    sha256 "7cff963a639ef23bef65cf1aab5a481d3b8f7e9ca35d4fa2566f33dce54a5eea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260502.0.42513/kopia-20260502.0.42513-macOS-arm64.tar.gz"
    sha256 "0d6c20159a505faf85c05e6cb25694efab59cc4743ebad9efe6ce158fce685cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260502.0.42513/kopia-20260502.0.42513-linux-x64.tar.gz"
    sha256 "bad5464a7998e1aefb411bfe72ed0165116c136a287cc58d5d48fcfb0e383155"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260502.0.42513/kopia-20260502.0.42513-linux-arm.tar.gz"
    sha256 "d9c505ddb89c3542d04228f26cd77fbed150d07947d9e9cb20adaed92d52aace"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20260502.0.42513/kopia-20260502.0.42513-linux-arm64.tar.gz"
    sha256 "475d86c99c8809968e4a541347bc0f9f6ed8909b1b8802ffea200d848612231c"
  end

  def install
    bin.install "kopia"
  end
end
