class Restbeast < Formula
  desc "Command-line API client, an API testing tool and an easy load testing tool"
  homepage "https://restbeast.com"
  url "https://github.com/restbeast/restbeast/archive/v1.2.0.tar.gz"
  sha256 "e795241105b688587764e75a63ff2bc04db4966c2ab16ab8671b0951262a0414"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go",
      "build",
      "-o",
      "restbeast",
      "-ldflags",
      "-X 'main.version=v1.2.0' -X 'main.sentryDsn=https://9c22d42ad3594172b24f9f5fc4db9d73@o421531.ingest.sentry.io/5341476'",
      "-v",
      "-buildmode=exe"
    bin.install "restbeast"
  end

  test do
    system "false"
  end
end
