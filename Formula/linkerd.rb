class Linkerd < Formula
  desc "Command-line utility to interact with linkerd"
  homepage "https://linkerd.io"

  url "https://github.com/linkerd/linkerd2.git",
      tag:      "stable-2.10.0",
      revision: "b10356a827cbe2776f5e960ed5dad8a9103f6443"
  license "Apache-2.0"

  livecheck do
    url :stable
    regex(/^stable[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "5a251773327e8fea32c8759264998b16b099e149b1440b912cb1d87f584f3c7a"
    sha256 cellar: :any_skip_relocation, big_sur:       "431eb96b983d4b0ed7fb5813c27f595a15614ff61e09d10844ee1ba9b9d91ab8"
    sha256 cellar: :any_skip_relocation, catalina:      "f27800f6c5104460fc2173ab542c89594287513bb61e14f003dbdb2c21d8fd2d"
    sha256 cellar: :any_skip_relocation, mojave:        "9e0ba5dc3da938a5b9158eb74585e7ecf1da0439bf51d9e05903683f7679937c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9360589cb20870f2459978880beaca7281fd8c6ae09cb3936e27fac03d7ddc95"
  end

  depends_on "go" => :build

  def install
    ENV["CI_FORCE_CLEAN"] = "1"

    system "bin/build-cli-bin"
    bin.install Dir["target/cli/*/linkerd"]

    # Install bash completion
    output = Utils.safe_popen_read("#{bin}/linkerd", "completion", "bash")
    (bash_completion/"linkerd").write output

    # Install zsh completion
    output = Utils.safe_popen_read("#{bin}/linkerd", "completion", "zsh")
    (zsh_completion/"linkerd").write output

    prefix.install_metafiles
  end

  test do
    run_output = shell_output("#{bin}/linkerd 2>&1")
    assert_match "linkerd manages the Linkerd service mesh.", run_output

    version_output = shell_output("#{bin}/linkerd version --client 2>&1")
    assert_match "Client version: ", version_output
    stable_resource = stable.instance_variable_get(:@resource)
    assert_match stable_resource.instance_variable_get(:@specs)[:tag], version_output if build.stable?

    system "#{bin}/linkerd", "install", "--ignore-cluster"
  end
end
