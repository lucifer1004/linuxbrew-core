class AzureCli < Formula
  include Language::Python::Virtualenv

  desc "Microsoft Azure CLI 2.0"
  homepage "https://docs.microsoft.com/cli/azure/overview"
  url "https://github.com/Azure/azure-cli/archive/azure-cli-2.20.0.tar.gz"
  sha256 "35416e94ab39375dd8a23229285615a4937dd56b43bf0307aabb9621c80b0b0e"
  license "MIT"
  head "https://github.com/Azure/azure-cli.git"

  livecheck do
    url :stable
    strategy :github_latest
    regex(%r{href=.*?/tag/azure-cli[._-]v?(\d+(?:\.\d+)+)["' >]}i)
  end

  bottle do
    sha256 cellar: :any,                 arm64_big_sur: "97075e6f0faabb5b0b1eea568709c68769ed92fa50876a9780e23bbf6c662eaf"
    sha256 cellar: :any,                 big_sur:       "78bfe847849f56eb602eb5d97e02b748c7a06e948de4b2ec866e677b57381cf1"
    sha256 cellar: :any,                 catalina:      "abb40ce03bbdc05802ae99ce8194573f4c18e4d1ec6f28ffab41991cd67466af"
    sha256 cellar: :any,                 mojave:        "dfa534f33f45634ebb2afce266fe50902e3333aaa63d46d189f944c7a24e362a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "2e36135c77beb20b8c79a5b7a3dbad3ad2d9790f8fdd4bb56300914cc0eb2e20"
  end

  depends_on "openssl@1.1"
  # Azure CLI is not compatible with Python 3.9 yet
  depends_on "python@3.8"

  uses_from_macos "libffi"

  on_linux do
    depends_on "pkg-config" => :build
  end

  resource "adal" do
    url "https://files.pythonhosted.org/packages/e5/78/d1790e75667e9b659d4ba7a69910f4eade3e7dfd8015ef743d610b06c46b/adal-1.2.6.tar.gz"
    sha256 "08b94d30676ceb78df31bce9dd0f05f1bc2b6172e44c437cbf5b968a00ac6489"
  end

  resource "antlr4-python3-runtime" do
    url "https://files.pythonhosted.org/packages/29/14/8ac135ec7cc9db3f768e2d032776718c6b23f74e63543f0974b4873500b2/antlr4-python3-runtime-4.7.2.tar.gz"
    sha256 "168cdcec8fb9152e84a87ca6fd261b3d54c8f6358f42ab3b813b14a7193bb50b"
  end

  resource "applicationinsights" do
    url "https://files.pythonhosted.org/packages/f5/02/b831bf3281723b81eb6b041d91d2c219123366f975ec0a73556620773417/applicationinsights-0.11.9.tar.gz"
    sha256 "30a11aafacea34f8b160fbdc35254c9029c7e325267874e3c68f6bdbcd6ed2c3"
  end

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/43/61/345856864a72ccc004bea5f74183c58bfd6675f9eab931ff9ce21a8fe06b/argcomplete-1.11.1.tar.gz"
    sha256 "5ae7b601be17bf38a749ec06aa07fb04e7b6b5fc17906948dc1866e7facf3740"
  end

  resource "azure-appconfiguration" do
    url "https://files.pythonhosted.org/packages/21/0a/1b24d1b3c1477b849d48aa29dcde3141c1524fab293042493f3432b672c2/azure-appconfiguration-1.1.1.zip"
    sha256 "b83cd2cb63d93225de84e27abbfc059212f8de27766f4c58dd3abb839dff0be4"
  end

  resource "azure-batch" do
    url "https://files.pythonhosted.org/packages/bb/fc/b66ea2085b0826542e98d2d183026b156286056012aa1b82066d1bed0d77/azure-batch-10.0.0.zip"
    sha256 "83d7a2b0be42ca456ac2b56fa3dc6ce704c130e888d37d924072c1d3718f32d0"
  end

  resource "azure-common" do
    url "https://files.pythonhosted.org/packages/99/33/fe8ffd51ed08a2b77d34b6a997f8e3e884a6e08f08f9626c9969d930fd3c/azure-common-1.1.22.zip"
    sha256 "c8e4a7bf15f139f779a415d2d3c371738b1e9f5e14abd9c18af6b9bed3babf35"
  end

  resource "azure-core" do
    url "https://files.pythonhosted.org/packages/d1/0f/4ffbed7f1f20067341d02538deec90263a090a4a5c0cd11d5a396f78c4ac/azure-core-1.10.0.zip"
    sha256 "b9cddf3eb239e32b14cf44750b21d7bc8d78b82aa53d57628523598dcd006803"
  end

  resource "azure-cosmos" do
    url "https://files.pythonhosted.org/packages/3c/d3/f74bf55c48851944b726cb36883c68d3c4bb887fb2196f216ca543c691e1/azure-cosmos-3.2.0.tar.gz"
    sha256 "4f77cc558fecffac04377ba758ac4e23f076dc1c54e2cf2515f85bc15cbde5c6"
  end

  resource "azure-datalake-store" do
    url "https://files.pythonhosted.org/packages/39/9d/8acff66e50186e64347b96268b6763a47c632d0240fd46b5e04d86656de7/azure-datalake-store-0.0.49.tar.gz"
    sha256 "3fcede6255cc9cd083d498c3a399b422f35f804c561bb369a7150ff1f2f07da9"
  end

  resource "azure-functions-devops-build" do
    url "https://files.pythonhosted.org/packages/d5/96/59ca26c8d9985df8a092cf5974e54b6c3e11208833ea1c0163d7fb763c94/azure-functions-devops-build-0.0.22.tar.gz"
    sha256 "c6341abda6098813f8fa625acd1e925410a17a8a1c7aaabdf975bb7cecb14edf"
  end

  resource "azure-graphrbac" do
    url "https://files.pythonhosted.org/packages/3e/4e/4598ea52efc2654b0c865243bd60625d4ffa4df874e7e5dcb76a9a4ddbbc/azure-graphrbac-0.60.0.zip"
    sha256 "d0bb62d8bf8e196b903f3971ba4afa448e4fe14e8394ebfcdd941d84d62ecafe"
  end

  resource "azure-keyvault" do
    url "https://files.pythonhosted.org/packages/8e/47/b71d7ab466189d0663a8aa216e4cc67eb16d5dfc7d69b62a9140dd8d1a20/azure-keyvault-1.1.0.zip"
    sha256 "37a8e5f376eb5a304fcd066d414b5d93b987e68f9212b0c41efa37d429aadd49"
  end

  resource "azure-keyvault-administration" do
    url "https://files.pythonhosted.org/packages/0d/3b/b43b361f9b1383d00943b2a0315c7e8c66040b8d0f827321d21f45446556/azure-keyvault-administration-4.0.0b3.zip"
    sha256 "777b4958e6ccde9951babcdfa96987927e42a952fd7a441f9fd01e0dcfcac4b4"
  end

  resource "azure-loganalytics" do
    url "https://files.pythonhosted.org/packages/7a/37/6d296ee71319f49a93ea87698da2c5326105d005267d58fb00cb9ec0c3f8/azure-loganalytics-0.1.0.zip"
    sha256 "3ceb350def677a351f34b0a0d1637df6be0c6fe87ff32a5270b17f540f6da06e"
  end

  resource "azure-mgmt-advisor" do
    url "https://files.pythonhosted.org/packages/f2/fb/bca29d83a2062c7d977742189195d669fd5983017fddb464c90f07adaac0/azure-mgmt-advisor-2.0.1.zip"
    sha256 "1929d6d5ba49d055fdc806e981b93cf75ea42ba35f78222aaf42d8dcf29d4ef3"
  end

  resource "azure-mgmt-apimanagement" do
    url "https://files.pythonhosted.org/packages/eb/6b/cbcc455ff4a5128955928ec7718787821e522f654f456b158f0fcc344e21/azure-mgmt-apimanagement-0.2.0.zip"
    sha256 "790f01c0b32583706b8b8c59667c0f5a51cd70444eee76474e23a598911e1d72"
  end

  resource "azure-mgmt-appconfiguration" do
    url "https://files.pythonhosted.org/packages/dd/b1/da10dc4bbe2af67cc71f7031af6c102516227a8cf03ac1e503a6ba0e9194/azure-mgmt-appconfiguration-1.0.1.zip"
    sha256 "b58bbe82a7429ba589292024896b58d96fe9fa732c578569cac349928dc2ca5f"
  end

  resource "azure-mgmt-applicationinsights" do
    url "https://files.pythonhosted.org/packages/83/ad/27c3e2c618c08ea451a80d6a0dc5b73b8c8c2392706909f297c37389766f/azure-mgmt-applicationinsights-0.1.1.zip"
    sha256 "f10229eb9e3e9d0ad20188b8d14d67055e86f3815b43b75eedf96b654bee2a9b"
  end

  resource "azure-mgmt-authorization" do
    url "https://files.pythonhosted.org/packages/8d/e7/193801d2a703c1892bae98c2d517308a4711c63d0fc2d693df74fca43a26/azure-mgmt-authorization-0.61.0.zip"
    sha256 "f5cceea3add04e9445ea88492f15eecf6c126f0406d967c95f6e48b79be8db75"
  end

  resource "azure-mgmt-batch" do
    url "https://files.pythonhosted.org/packages/a3/f8/a91baa48ef5097d89cf4c7381b76657931fe525fad4d912bd6ac62386ac6/azure-mgmt-batch-9.0.0.zip"
    sha256 "03417eecfa1fac906e674cb1cb43ed7da27a96277277b091d7c389ba39f6c3fe"
  end

  resource "azure-mgmt-batchai" do
    url "https://files.pythonhosted.org/packages/fa/7f/0a9e5aa22ea91db0771c267c4815396516177702a4a4eea389eed7af47dd/azure-mgmt-batchai-2.0.0.zip"
    sha256 "f1870b0f97d5001cdb66208e5a236c9717a0ed18b34dbfdb238a828f3ca2a683"
  end

  resource "azure-mgmt-billing" do
    url "https://files.pythonhosted.org/packages/ed/53/79afdd87c1c117835554582a3e0ed835d49bd862f931ac38b29c9e18749f/azure-mgmt-billing-1.0.0.zip"
    sha256 "8b55064546c8e94839d9f8c98e9ea4b021004b3804e192bf39fa65b603536ad0"
  end

  resource "azure-mgmt-botservice" do
    url "https://files.pythonhosted.org/packages/2c/38/6ec85a038ea48d9408351d49331dcc644bccf75d6f43e564933a74ba63c9/azure-mgmt-botservice-0.3.0.zip"
    sha256 "f8318878a66a0685a01bf27b7d1409c44eb90eb72b0a616c1a2455c72330f2f1"
  end

  resource "azure-mgmt-cdn" do
    url "https://files.pythonhosted.org/packages/8d/ae/53828a66b805b31d94dfff19f7003b0b7ec4aebf619513f972aef9b2cd0a/azure-mgmt-cdn-7.0.0.zip"
    sha256 "e9a6c9a19b3971ba1dbdeef96c0a5a2c3594633a7547a60e6bfcb8033864ee38"
  end

  resource "azure-mgmt-cognitiveservices" do
    url "https://files.pythonhosted.org/packages/a2/b2/209015559d399f3a9b67ee2faaf7b19676e2f15107a1b20f99a5a3d1a82c/azure-mgmt-cognitiveservices-6.3.0.zip"
    sha256 "1d029d5140152a36cc32f340e09f2b185ede2f54e577a44f3821878efb823415"
  end

  resource "azure-mgmt-compute" do
    url "https://files.pythonhosted.org/packages/20/21/3d06c1a9d96c4109decf036ca6d6bbc3a828dc92e5d62563a32522dcc86d/azure-mgmt-compute-19.0.0.zip"
    sha256 "65afe759c6ee87dd89d65d59c8da4b2c04d197c07c1fbfdc56ef1aea468e4525"
  end

  resource "azure-mgmt-consumption" do
    url "https://files.pythonhosted.org/packages/8c/f0/e2d94b246e2dce71eff8d362836a1979f02b4185f5403a13e4fb26c07ccb/azure-mgmt-consumption-2.0.0.zip"
    sha256 "9a85a89f30f224d261749be20b4616a0eb8948586f7f0f20573b8ea32f265189"
  end

  resource "azure-mgmt-containerinstance" do
    url "https://files.pythonhosted.org/packages/95/3b/513362470b6b61fe2a5067e5426351a40fe8d6bd7197a5355d2957928b4d/azure-mgmt-containerinstance-1.5.0.zip"
    sha256 "b055386f04ba8433112b0df7fcbc260b5208828d7bb8c057e760fe596aa7a8cd"
  end

  resource "azure-mgmt-containerregistry" do
    url "https://files.pythonhosted.org/packages/7e/0e/11dfc74ada7512f914126a5d1edfd0fa466fc576fab5c05d35cd7b0bfbb3/azure-mgmt-containerregistry-3.0.0rc16.zip"
    sha256 "793e601f42b8ab642bd65129baa8f1421394ac0e9b12c024b63f8f2ac7cc5d3a"
  end

  resource "azure-mgmt-containerservice" do
    url "https://files.pythonhosted.org/packages/c0/e3/ce640e21c8fc8b037f6b2d7671a1aed2ee9daf3f04739ff43fe74f95f85c/azure-mgmt-containerservice-9.4.0.zip"
    sha256 "d90684106c70779450b82067be4d3e449c799ca1f47d941e45f6d2b5c016dac9"
  end

  resource "azure-mgmt-core" do
    url "https://files.pythonhosted.org/packages/77/06/87dd6ff888cfa9d65fbd480115fc0795120df665c29556f37bf28b559ffc/azure-mgmt-core-1.2.1.zip"
    sha256 "a3906fa77edfedfcc3229dc3b69489d5ed63b107c7eacbc50092e6cbfbfd83f0"
  end

  resource "azure-mgmt-cosmosdb" do
    url "https://files.pythonhosted.org/packages/38/4d/3821d233d89132aef8104f20a3cbfd3435d1f58895b1d3c932474115777d/azure-mgmt-cosmosdb-3.0.0.zip"
    sha256 "fd6579bf15ce83d0944fe3409e1a4e1bb7fe40119f5254cd54edba2d3b6e2283"
  end

  resource "azure-mgmt-databoxedge" do
    url "https://files.pythonhosted.org/packages/34/b4/245f27cb987a4ada0e6cd5071a26b045994e367d2a67241a291ceaca65a0/azure-mgmt-databoxedge-0.2.0.zip"
    sha256 "83c06d5292063ac7bc26bc2ce3c810fe8eec8329a5817d172319754e11d2dd70"
  end

  resource "azure-mgmt-datalake-analytics" do
    url "https://files.pythonhosted.org/packages/f4/c6/6b273e3b7bc17c13ef85c0ebc6bf7bbd8289a46892ee5bef1f0859aff11d/azure-mgmt-datalake-analytics-0.2.1.zip"
    sha256 "4c7960d094f5847d9a456c18b8a3c8e60c428e3080a3905f1c943d81ba6351a4"
  end

  resource "azure-mgmt-datalake-nspkg" do
    url "https://files.pythonhosted.org/packages/8e/0c/7b705f7c4a41bfeb0b6f3557f227c71aa3fa71555ed76ae934aa7db4b13e/azure-mgmt-datalake-nspkg-3.0.1.zip"
    sha256 "deb192ba422f8b3ec272ce4e88736796f216f28ea5b03f28331d784b7a3f4880"
  end

  resource "azure-mgmt-datalake-store" do
    url "https://files.pythonhosted.org/packages/00/13/037f0128bdfcd47253f69a3b4ca6a7ff7b673b35832bc48f7c74df24a9be/azure-mgmt-datalake-store-0.5.0.zip"
    sha256 "9376d35495661d19f8acc5604f67b0bc59493b1835bbc480f9a1952f90017a4c"
  end

  resource "azure-mgmt-datamigration" do
    url "https://files.pythonhosted.org/packages/96/7e/e8735fb1ffa239ee3e10b98c76467e072e055fcb56b052c50f8384bcb8ae/azure-mgmt-datamigration-4.1.0.zip"
    sha256 "c33d1deb0ee173a15c8ec21a1e714ba544fe5f4895d3b1d8b0581f3c1b2e8ce4"
  end

  resource "azure-mgmt-deploymentmanager" do
    url "https://files.pythonhosted.org/packages/9d/21/548a9b6b85814fd73f61531f555230d846213a95f4612d0811ff916b71f8/azure-mgmt-deploymentmanager-0.2.0.zip"
    sha256 "46e342227993fc9acab1dda42f2eb566b522a8c945ab9d0eea56276b46f6d730"
  end

  resource "azure-mgmt-devtestlabs" do
    url "https://files.pythonhosted.org/packages/f0/18/ef3217b4ef0acc25d1ed20f5e873f6ad3fe80dafaf8b9c17349063bb1d98/azure-mgmt-devtestlabs-4.0.0.zip"
    sha256 "59549c4c4068f26466b1097b574a8e5099fb2cd6c8be0a00395b06d3b29e278d"
  end

  resource "azure-mgmt-dns" do
    url "https://files.pythonhosted.org/packages/a2/0d/a36c123a1c978d39a1da747b9e8179f37441176d2a5276124d6d3312b2c4/azure-mgmt-dns-2.1.0.zip"
    sha256 "3730b1b3f545a5aa43c0fff07418b362a789eb7d81286e2bed90ffef88bfa5d0"
  end

  resource "azure-mgmt-eventgrid" do
    url "https://files.pythonhosted.org/packages/d6/c8/ff41ff7da5480246bae73bb1a31d5ffe462a6337b284d7bfed90b8981df2/azure-mgmt-eventgrid-3.0.0rc7.zip"
    sha256 "68f9eb18b74fa86e07cf4e4d1a2ed16fe549bdd53f21a707b05798616b01a9d4"
  end

  resource "azure-mgmt-eventhub" do
    url "https://files.pythonhosted.org/packages/7a/61/0c211f100900066787ea5fc6bd586806f95d54c4129e824859b9310567f2/azure-mgmt-eventhub-4.1.0.zip"
    sha256 "05b543eb3d2d9bdb2d78bf7366afa5f7e1ba5614f92793f3f2a988453538cfa0"
  end

  resource "azure-mgmt-hdinsight" do
    url "https://files.pythonhosted.org/packages/dd/d9/25ff2e5729b66507d3b1b1b8abde8f803d9df92c870d069145201909eb4c/azure-mgmt-hdinsight-2.2.0.zip"
    sha256 "332c60dc6d3e38093f6e1e24e5338418626ec8406d600d9e74d95b2179d61383"
  end

  resource "azure-mgmt-imagebuilder" do
    url "https://files.pythonhosted.org/packages/25/37/63e5eca05f58b7d9d9f0525f389f1938afe0f593e4216679fb8af4a5bc6b/azure-mgmt-imagebuilder-0.4.0.zip"
    sha256 "4c9291bf16b40b043637e5e4f15650f71418ac237393e62219cab478a7951733"
  end

  resource "azure-mgmt-iotcentral" do
    url "https://files.pythonhosted.org/packages/1a/46/477222d36523dac138a68a76ea929a24bce7ca7b79959cc3fff81bb6d0d1/azure-mgmt-iotcentral-4.1.0.zip"
    sha256 "e6d4810f454c0d63a5e816eaa7e54a073a3f70b2256162ff1c234cfe91783ae6"
  end

  resource "azure-mgmt-iothub" do
    url "https://files.pythonhosted.org/packages/28/d2/6868d49c45ddc6bdd8b85d45044ce7ba7373d4524981413c806aada18955/azure-mgmt-iothub-0.12.0.zip"
    sha256 "da20ee2b9b9a2c2f89be9037c3ee5421152e7f6d718eafbf50a91dbf0a07ffa0"
  end

  resource "azure-mgmt-iothubprovisioningservices" do
    url "https://files.pythonhosted.org/packages/7a/9e/179a404d2b3d999cf2dbdbec51c849e92625706e8eff6bd6d02df3ad2ab7/azure-mgmt-iothubprovisioningservices-0.2.0.zip"
    sha256 "8c37acfd1c33aba845f2e0302ef7266cad31cba503cc990a48684659acb7b91d"
  end

  resource "azure-mgmt-keyvault" do
    url "https://files.pythonhosted.org/packages/69/56/678b158efbd4b4d70151a0d688e11a529a42eac3ff426813878f253f76c4/azure-mgmt-keyvault-8.0.0.zip"
    sha256 "2c974c6114d8d27152642c82a975812790a5e86ccf609bf370a476d9ea0d2e7d"
  end

  resource "azure-mgmt-kusto" do
    url "https://files.pythonhosted.org/packages/0d/79/887c8f71d7ebd87e4f2359f6726a0a881f1c9369167bf075bf22ba39751c/azure-mgmt-kusto-0.3.0.zip"
    sha256 "9eb8b7781fd4410ee9e207cd0c3983baf9e58414b5b4a18849d09856e36bacde"
  end

  resource "azure-mgmt-loganalytics" do
    url "https://files.pythonhosted.org/packages/3b/ff/737e0bcd90ab165c6018a08e1865bf71f4de2ee22bca680cc601a042c811/azure-mgmt-loganalytics-8.0.0.zip"
    sha256 "3e7a93186594c328a6f34f0e0d9209a05021228baa85aa4c1c4ffdbf8005a45f"
  end

  resource "azure-mgmt-managedservices" do
    url "https://files.pythonhosted.org/packages/f8/db/faab14079c628202d771a2bc33016326de6d194d1460fd8e531a59664371/azure-mgmt-managedservices-1.0.0.zip"
    sha256 "fed8399fc6773aada37c1d0496a46f59410d77c9494d0ca5967c531c3376ad19"
  end

  resource "azure-mgmt-managementgroups" do
    url "https://files.pythonhosted.org/packages/f2/03/30442b6025da7a730b24b5d208119740382e2c5135ec0b96a1003b3c86fe/azure-mgmt-managementgroups-0.2.0.zip"
    sha256 "3d5237947458dc94b4a392141174b1c1258d26611241ee104e9006d1d798f682"
  end

  resource "azure-mgmt-maps" do
    url "https://files.pythonhosted.org/packages/58/99/735fc6f274d2f2a493071b4bc3e6ec2bc3d0d6caf1425eb903647785532c/azure-mgmt-maps-0.1.0.zip"
    sha256 "c120e210bb61768da29de24d28b82f8d42ae24e52396eb6569b499709e22f006"
  end

  resource "azure-mgmt-marketplaceordering" do
    url "https://files.pythonhosted.org/packages/e9/90/1bf9d50614acee60ba5447bc9db6d63930f1559182fa8266ccac60a96dd3/azure-mgmt-marketplaceordering-0.2.1.zip"
    sha256 "dc765cde7ec03efe456438c85c6207c2f77775a8ce8a7adb19b0df5c5dc513c2"
  end

  resource "azure-mgmt-media" do
    url "https://files.pythonhosted.org/packages/54/2c/66d96e3455903d0f15683999e06052aa3505a4c61c279c00d1b8099cef43/azure-mgmt-media-3.0.0.zip"
    sha256 "8944775725c5253614d257576d841ee68afa34f570b05c0924a7f73f1db28a24"
  end

  resource "azure-mgmt-monitor" do
    url "https://files.pythonhosted.org/packages/d1/07/6109120151e9bb768a581fccea4adfc1016bcf3cfe7a167431d400b277ac/azure-mgmt-monitor-2.0.0.zip"
    sha256 "e7f7943fe8f0efe98b3b1996cdec47c709765257a6e09e7940f7838a0f829e82"
  end

  resource "azure-mgmt-msi" do
    url "https://files.pythonhosted.org/packages/da/6f/60f92469f93e2820949f967b8c722fe0c04f03e4cc9a6332ffaf5e9f405b/azure-mgmt-msi-0.2.0.zip"
    sha256 "8622bc9a164169a0113728ebe7fd43a88189708ce6e10d4507247d6907987167"
  end

  resource "azure-mgmt-netapp" do
    url "https://files.pythonhosted.org/packages/81/86/0c193f995a6c13c6a14d8807509b4e9715d0c2ba695dff0159ee6f1b344f/azure-mgmt-netapp-0.15.0.zip"
    sha256 "5e98c360609a77b443b2fe431e0337e5cb705b4f02d0204791f9985f7ce68836"
  end

  resource "azure-mgmt-network" do
    url "https://files.pythonhosted.org/packages/53/58/d8d097b24d8a73a48ad6691197ba787c6e9809f44debaab90d55a5b52663/azure-mgmt-network-17.1.0.zip"
    sha256 "f47852836a5960447ab534784a9285696969f007744ba030828da2eab92621ab"
  end

  resource "azure-mgmt-nspkg" do
    url "https://files.pythonhosted.org/packages/c4/d4/a9a140ee15abd8b0a542c0d31b7212acf173582c10323b09380c79a1178b/azure-mgmt-nspkg-3.0.2.zip"
    sha256 "8b2287f671529505b296005e6de9150b074344c2c7d1c805b3f053d081d58c52"
  end

  resource "azure-mgmt-policyinsights" do
    url "https://files.pythonhosted.org/packages/25/aa/1f0cb5c3533de2641a692b0b3cb4d06003579a21e6eec280a8718fcf95bf/azure-mgmt-policyinsights-0.5.0.zip"
    sha256 "ed229e3845c477e88dde413825d4fba0d38b3a5ffab4e694c7d0da995f3db0f3"
  end

  resource "azure-mgmt-privatedns" do
    url "https://files.pythonhosted.org/packages/1b/88/bd382d401e58b87df086f0218af94e7defd78f7cb300427eee3d25a9d7a1/azure-mgmt-privatedns-0.1.0.zip"
    sha256 "d29cfd8cec806e06673d9382d3f5766fc65d9a9de75b424705094a34a7db8d23"
  end

  resource "azure-mgmt-rdbms" do
    url "https://files.pythonhosted.org/packages/3a/df/3589cb655554dcf1e5c66c05e600c7f6719179d10b4203ead88e1d5b1246/azure-mgmt-rdbms-3.1.0rc1.zip"
    sha256 "c5b068d93996030e3485805cd4c28dd329584fc080d7fca6c66cf725af20e249"
  end

  resource "azure-mgmt-recoveryservices" do
    url "https://files.pythonhosted.org/packages/7c/67/9857c8741d0ccbc4bd22af3350df974631c2b04a62e4fcbdb704bc05dae3/azure-mgmt-recoveryservices-0.4.0.zip"
    sha256 "e1e794760232239f8a9328d5de1740565ff70d1612a2921c9609746ba5671e6c"
  end

  resource "azure-mgmt-recoveryservicesbackup" do
    url "https://files.pythonhosted.org/packages/52/ab/e356efcdbab28114deb1bd7db9870d3553d3db29aaf300f8ce7f8db106bf/azure-mgmt-recoveryservicesbackup-0.11.0.zip"
    sha256 "f2b85d1d7d7db2af106000910ea5f8b95639874176a5de2f7ab37a2caa67af6b"
  end

  resource "azure-mgmt-redhatopenshift" do
    url "https://files.pythonhosted.org/packages/28/9c/e93323b264196847b41e08dc7cfadfc91a7c1b4df1c5eb532261eaa717aa/azure-mgmt-redhatopenshift-0.1.0.zip"
    sha256 "565afbc63f5283f37c76135174f2ca20dd417da3e24b3fb1e132c4a0e2a2c5bc"
  end

  resource "azure-mgmt-redis" do
    url "https://files.pythonhosted.org/packages/df/28/f2a864d6f24db21afdcdd18d72d668cd342d0e47fcca9fef87d4f459cef3/azure-mgmt-redis-7.0.0rc1.zip"
    sha256 "d3cc259c507b79962495ed00d0a3432a45e4e90a0fb48b49e80d51cdc398dc20"
  end

  resource "azure-mgmt-relay" do
    url "https://files.pythonhosted.org/packages/df/76/f4673094df467c1198dfd944f8a800a25d0ed7f4bbd7c73e9e2605874576/azure-mgmt-relay-0.1.0.zip"
    sha256 "d9f987cf2998b8a354f331b2a71082c049193f1e1cd345812e14b9b821365acb"
  end

  resource "azure-mgmt-reservations" do
    url "https://files.pythonhosted.org/packages/97/0a/eb194a08fd35bda1e6b27ef227241ac36c8abb3bf3a201772c2777a74caf/azure-mgmt-reservations-0.6.0.zip"
    sha256 "83a9a70d6fd78b8b3e92ca64bbc1fde8d1bc5e2efea54076052c51c946b4cc9b"
  end

  resource "azure-mgmt-resource" do
    url "https://files.pythonhosted.org/packages/9b/79/aac15f42c9d37a6bc76e0b78c6d7fa144fc53937ce432adae9c7ac7ee96b/azure-mgmt-resource-12.0.0.zip"
    sha256 "8779e27fae0e81e9128789a33924dba26f2a0d756b215364b1b4372f020b9f1f"
  end

  resource "azure-mgmt-search" do
    url "https://files.pythonhosted.org/packages/fe/ad/39e9f7c32b6656c3e76a9b7a097678ed7dee0ecd19dee1e661c8270a39c0/azure-mgmt-search-8.0.0.zip"
    sha256 "a96d50c88507233a293e757202deead980c67808f432b8e897c4df1ca088da7e"
  end

  resource "azure-mgmt-security" do
    url "https://files.pythonhosted.org/packages/97/3b/0836c85edf96157776d92e2875592ce269ddd7fd78cac582116ece885f41/azure-mgmt-security-0.6.0.zip"
    sha256 "9f37d0151d730801222af111f0830905634795dbfd59ad1b89c35197421e74d3"
  end

  resource "azure-mgmt-servicebus" do
    url "https://files.pythonhosted.org/packages/8f/bd/fdb9db085a1590ef13e683f3aa6462c6fe70fb1e61e69212017abe58b419/azure-mgmt-servicebus-0.6.0.zip"
    sha256 "f20920b8fb119ef4abeda4d2dac765a4fc48cd0bcf30c27f8c4cc6d890bc08b1"
  end

  resource "azure-mgmt-servicefabric" do
    url "https://files.pythonhosted.org/packages/12/fb/b10985ab709023472edf69ae058a8a1272e7d0a3525944204b36a2b29360/azure-mgmt-servicefabric-0.5.0.zip"
    sha256 "5771f24516c8d4a27f5569f23f3a606f6f106e4ad502eec7f38aedfcd3eadc74"
  end

  resource "azure-mgmt-signalr" do
    url "https://files.pythonhosted.org/packages/84/9e/3dfd91f786df6fdfe9938a201695793484782ea412234b24392b232e500c/azure-mgmt-signalr-0.4.0.zip"
    sha256 "6503ddda9d6f4b634dfeb8eb4bcd14ede5e0900585f6c83bf9010cf82215c126"
  end

  resource "azure-mgmt-sql" do
    url "https://files.pythonhosted.org/packages/a9/be/891eace96e9590619e0d087ff77b70d05354ac1e82bc65ad1665de0e087d/azure-mgmt-sql-0.26.0.zip"
    sha256 "b66b31847b7a99158d3970de6dc919497b782fcfbbe7b3512920eeeb054ca911"
  end

  resource "azure-mgmt-sqlvirtualmachine" do
    url "https://files.pythonhosted.org/packages/f6/03/efe8f2ea66d51a23d908ab08c6a7b5f55b43c16bafb8d703f69594c635cf/azure-mgmt-sqlvirtualmachine-0.5.0.zip"
    sha256 "b5a9423512a7b12844ac014366a1d53c81017a14f39676beedf004a532aa2aad"
  end

  resource "azure-mgmt-storage" do
    url "https://files.pythonhosted.org/packages/f5/a3/c1877ded12ea772db0e8ddb374c9252ae958e38ae85301731e927cb8253b/azure-mgmt-storage-17.0.0.zip"
    sha256 "c0e3fd99028d98c80dddabe1c22dfeb3d694e5c1393c6de80766eb240739e4bc"
  end

  resource "azure-mgmt-synapse" do
    url "https://files.pythonhosted.org/packages/3a/1a/a8222e7153bd85d9c5bce424dd31e6bdb78d83bf89826c58b3c02fd8987c/azure-mgmt-synapse-0.6.0.zip"
    sha256 "f81cb52b220774aab93ffcf25bdc17e03fd84b6916836640789f86fbf636b984"
  end

  resource "azure-mgmt-trafficmanager" do
    url "https://files.pythonhosted.org/packages/14/98/6fb3bc67bb862b7bac2ea43108aa1648f72c8fa63de22ab1e58278224c43/azure-mgmt-trafficmanager-0.51.0.zip"
    sha256 "fc8ae77022cfe52fda4379a2f31e0b857574d536e41291a7b569b5c0f4104186"
  end

  resource "azure-mgmt-web" do
    url "https://files.pythonhosted.org/packages/4a/d2/84d38f97d713e97e596b5b6dee9de3415fbc66cc0ab6dcb3aa66bdbdf00c/azure-mgmt-web-0.48.0.zip"
    sha256 "da0f9e3b57528c72a7bc92e3515413a4a4fdbc9626c26ac04b7551a7739a81ec"
  end

  resource "azure-multiapi-storage" do
    url "https://files.pythonhosted.org/packages/ea/bf/41b379792e31d02cff98a0b3cbd79e2d01ca1623a0d3eef3430f91fa5e4e/azure-multiapi-storage-0.6.0.tar.gz"
    sha256 "d805a91b295edf52057ffab26b714160905406bdd5d7a1a3f93f6cdc3ede8412"
  end

  resource "azure-nspkg" do
    url "https://files.pythonhosted.org/packages/39/31/b24f494eca22e0389ac2e81b1b734453f187b69c95f039aa202f6f798b84/azure-nspkg-3.0.2.zip"
    sha256 "e7d3cea6af63e667d87ba1ca4f8cd7cb4dfca678e4c55fc1cedb320760e39dd0"
  end

  resource "azure-storage-common" do
    url "https://files.pythonhosted.org/packages/ae/45/0d21c1543afd3a97c416298368e06df158dfb4740da0e646a99dab6080de/azure-storage-common-1.4.2.tar.gz"
    sha256 "4ec87c7537d457ec95252e0e46477e2c1ccf33774ffefd05d8544682cb0ae401"
  end

  resource "azure-synapse-accesscontrol" do
    url "https://files.pythonhosted.org/packages/3d/82/b2824ba944ba17971a0a3cc32ee7ba97b9ffee2d3b398a9ac1d11d36b03f/azure-synapse-accesscontrol-0.2.0.zip"
    sha256 "ab40dbfbf2f88ffbfaca9c466a56a34177452159791e66f89a09f89761c64de7"
  end

  resource "azure-synapse-artifacts" do
    url "https://files.pythonhosted.org/packages/20/69/4ac19875b86210bfeb18f9e0aa64a233a74f5c93177b4ca56038a7e7fe19/azure-synapse-artifacts-0.3.0.zip"
    sha256 "2a705b4a89cea8e67c2189b9be7153662cd73073c3c15bcee5033a9378fd835c"
  end

  resource "azure-synapse-spark" do
    url "https://files.pythonhosted.org/packages/76/be/1a645ecf2b8215e2753d115e163b8c0fa0a4d9fec02f24486e7f9993c212/azure-synapse-spark-0.2.0.zip"
    sha256 "390e5bae1c1e108aed37688fe08e4d69c742f6ddd852218856186a4acdc532e2"
  end

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/fa/aa/025a3ab62469b5167bc397837c9ffc486c42a97ef12ceaa6699d8f5a5416/bcrypt-3.1.7.tar.gz"
    sha256 "0b0069c752ec14172c5f78208f1863d7ad6755a6fae6fe76ec2c80d13be41e42"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/c5/67/5d0548226bcc34468e23a0333978f0e23d28d0b3f0c71a151aef9c3f7680/certifi-2019.6.16.tar.gz"
    sha256 "945e3ba63a0b9f577b1395204e13c3a231f9bc0223888be653286534e5873695"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/66/6a/98e023b3d11537a5521902ac6b50db470c826c682be6a8c661549cb7717a/cffi-1.14.4.tar.gz"
    sha256 "1a465cbe98a7fd391d47dce4b8f7e5b921e6cd805ef421d04f5f66ba8f06086c"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/76/53/e785891dce0e2f2b9f4b4ff5bc6062a53332ed28833c7afede841f46a5db/colorama-0.4.1.tar.gz"
    sha256 "05eed71e2e327246ad6b38c540c4a3117230b19679b875190486ddd2d721422d"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/d4/85/38715448253404186029c575d559879912eb8a1c5d16ad9f25d35f7c4f4c/cryptography-3.3.2.tar.gz"
    sha256 "5a60d3780149e13b7a6ff7ad6526b38846354d11a15e21068e57073e29e19bed"
  end

  resource "fabric" do
    url "https://files.pythonhosted.org/packages/cf/3c/19f930f9e74c417e2c617055ceb2be6aee439ac68e07b7d3b3119a417191/fabric-2.4.0.tar.gz"
    sha256 "93684ceaac92e0b78faae551297e29c48370cede12ff0f853cdebf67d4b87068"
  end

  resource "humanfriendly" do
    url "https://files.pythonhosted.org/packages/31/0e/a2e882aaaa0a378aa6643f4bbb571399aede7dbb5402d3a1ee27a201f5f3/humanfriendly-9.1.tar.gz"
    sha256 "066562956639ab21ff2676d1fda0b5987e985c534fc76700a19bd54bcb81121d"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/e2/ae/0b037584024c1557e537d25482c306cf6327b5a09b6c4b893579292c1c38/importlib_metadata-1.7.0.tar.gz"
    sha256 "90bb658cdbbf6d1735b6341ce708fc7024a3e14e99ffdc5783edea9f9b077f83"
  end

  resource "invoke" do
    url "https://files.pythonhosted.org/packages/ef/80/cef14194e2dd62582cc0a4f5f2db78fb00de3ba5d1bc0e50897b398ea984/invoke-1.2.0.tar.gz"
    sha256 "dc492f8f17a0746e92081aec3f86ae0b4750bf41607ea2ad87e5a7b5705121b7"
  end

  resource "isodate" do
    url "https://files.pythonhosted.org/packages/b1/80/fb8c13a4cd38eb5021dc3741a9e588e4d1de88d895c1910c6fc8a08b7a70/isodate-0.6.0.tar.gz"
    sha256 "2e364a3d5759479cdb2d37cce6b9376ea504db2ff90252a2e5b7cc89cc9ff2d8"
  end

  resource "javaproperties" do
    url "https://files.pythonhosted.org/packages/db/43/58b89453727acdcf07298fe0f037e45b3988e5dcc78af5dce6881d0d2c5e/javaproperties-0.5.1.tar.gz"
    sha256 "2b0237b054af4d24c74f54734b7d997ca040209a1820e96fb4a82625f7bd40cf"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/4f/e7/65300e6b32e69768ded990494809106f87da1d436418d5f1367ed3966fd7/Jinja2-2.11.3.tar.gz"
    sha256 "a6d58433de0ae800347cab1fa3043cebbabe8baa9d29e668f1c768cb87a333c6"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/5c/40/3bed01fc17e2bb1b02633efc29878dfa25da479ad19a69cfb11d2b88ea8e/jmespath-0.9.5.tar.gz"
    sha256 "cca55c8d153173e21baa59983015ad0daf603f9cb799904ff057bfb8ff8dc2d9"
  end

  resource "jsmin" do
    url "https://files.pythonhosted.org/packages/17/73/615d1267a82ed26cd7c124108c3c61169d8e40c36d393883eaee3a561852/jsmin-2.2.2.tar.gz"
    sha256 "b6df99b2cd1c75d9d342e4335b535789b8da9107ec748212706ef7bbe5c2553b"
  end

  resource "jsondiff" do
    url "https://files.pythonhosted.org/packages/64/5c/2b4b0ae4d42cb1b0b1a89ab1c4d9fe02c72461e33a5d02009aa700574943/jsondiff-1.2.0.tar.gz"
    sha256 "34941bc431d10aa15828afe1cbb644977a114e75eef6cc74fb58951312326303"
  end

  resource "knack" do
    url "https://files.pythonhosted.org/packages/da/a6/aff7d584715de9995e7afcbacb675e4be20a200679d2f075adc19ebff353/knack-0.8.0rc2.tar.gz"
    sha256 "e29ce0570395713e54b236f21a4137d316ac84c012533a107b63861d29cae5da"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz"
    sha256 "29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b"
  end

  resource "mock" do
    url "https://files.pythonhosted.org/packages/2e/35/594f501b2a0fb3732c8190ca885dfdf60af72d678cd5fa8169c358717567/mock-4.0.2.tar.gz"
    sha256 "dd33eb70232b6118298d516bbcecd26704689c386594f0f3c4f13867b2c56f72"
  end

  resource "msal" do
    url "https://files.pythonhosted.org/packages/29/7e/41c593ecf49978b3885413ef3d2d711453a6ebdc7eb28e062d910d9dd785/msal-1.9.0.tar.gz"
    sha256 "c11a6f2a1f8ff522ebf415486b06bbd476582c7b26ee59f4a38a239f57e59249"
  end

  resource "msrest" do
    url "https://files.pythonhosted.org/packages/bb/2c/e8ac4f491efd412d097d42c9eaf79bcaad698ba17ab6572fd756eb6bd8f8/msrest-0.6.21.tar.gz"
    sha256 "72661bc7bedc2dc2040e8f170b6e9ef226ee6d3892e01affd4d26b06474d68d8"
  end

  resource "msrestazure" do
    url "https://files.pythonhosted.org/packages/33/09/3e739919833155dfa6126bcd00a406fb9beab7ca002022c65b7e7e9cd1eb/msrestazure-0.6.3.tar.gz"
    sha256 "0ec9db93eeea6a6cf1240624a04f49cd8bbb26b98d84a63a8220cfda858c2a96"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/ec/90/882f43232719f2ebfbdbe8b7c57fc9642a25b3df30cb70a3701ea22622de/oauthlib-3.0.1.tar.gz"
    sha256 "0ce32c5d989a1827e3f1148f98b9085ed2370fc939bf524c9c851d8714797298"
  end

  resource "paramiko" do
    url "https://files.pythonhosted.org/packages/54/68/dde7919279d4ecdd1607a7eb425a2874ccd49a73a5a71f8aa4f0102d3eb8/paramiko-2.6.0.tar.gz"
    sha256 "f4b2edfa0d226b70bd4ca31ea7e389325990283da23465d572ed1f70a7583041"
  end

  resource "pkginfo" do
    url "https://files.pythonhosted.org/packages/36/d3/f56bbbb9e03812de99be566a4c8ed90a0202b9aebd4528b2ad98900b9063/pkginfo-1.7.0.tar.gz"
    sha256 "029a70cb45c6171c329dfc890cde0879f8c52d6f3922794796e06f577bb03db4"
  end

  resource "portalocker" do
    url "https://files.pythonhosted.org/packages/31/e3/b75d97109c793db0e23bcad15ab642da7517fe8dd6ad31567ed66ff51760/portalocker-1.7.1.tar.gz"
    sha256 "6d6f5de5a3e68c4dd65a98ec1babb26d28ccc5e770e07b672d65d5a35e4b2d8a"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/aa/3e/d18f2c04cf2b528e18515999b0c8e698c136db78f62df34eee89cee205f1/psutil-5.7.2.tar.gz"
    sha256 "90990af1c3c67195c44c9a889184f84f5b2320dce3ee3acbd054e3ba0b4a7beb"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/68/9e/49196946aee219aead1290e00d1e7fdeab8567783e83e1b9ab5585e6206a/pycparser-2.19.tar.gz"
    sha256 "a988718abfad80b6b157acce7bf130a30876d27603738ac39f140993246b25b3"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/19/d0/dec5604a275b19b0ebd2b9c43730ce39549c8cd8602043eaf40c541a7256/Pygments-2.8.0.tar.gz"
    sha256 "37a13ba168a02ac54cc5891a42b1caec333e59b66addb7fa633ea8a6d73445c0"
  end

  resource "PyJWT" do
    url "https://files.pythonhosted.org/packages/2f/38/ff37a24c0243c5f45f5798bd120c0f873eeed073994133c084e1cf13b95c/PyJWT-1.7.1.tar.gz"
    sha256 "8d59a976fb773f3e6a39c85636357c4f0e242707394cadadd9814f5cbaa20e96"
  end

  resource "PyNaCl" do
    url "https://files.pythonhosted.org/packages/61/ab/2ac6dea8489fa713e2b4c6c5b549cc962dd4a842b5998d9e80cf8440b7cd/PyNaCl-1.3.0.tar.gz"
    sha256 "0c6100edd16fefd1557da078c7a31e7b7d7a52ce39fdca2bec29d4f7b6e7600c"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/40/d0/8efd61531f338a89b4efa48fcf1972d870d2b67a7aea9dcf70783c8464dc/pyOpenSSL-19.0.0.tar.gz"
    sha256 "aeca66338f6de19d1aa46ed634c3b9ae519a64b458f8468aec688e7e3c20f200"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ad/99/5b2e99737edeb28c71bcbec5b5dda19d0d9ef3ca3e92e3e925e7c0bb364c/python-dateutil-2.8.0.tar.gz"
    sha256 "c89805f6f4d64db21ed966fda138f8a5ed7a4fdbc1a8ee329ce1b74e3c74da9e"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/df/d5/3e3ff673e8f3096921b3f1b79ce04b832e0100b4741573154b72b756a681/pytz-2019.1.tar.gz"
    sha256 "d747dd3d23d77ef44c6a3526e274af6efeb0a6f1afd5a69ba4d5be4098c8e141"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/01/62/ddcf76d1d19885e8579acb1b1df26a852b03472c0e46d2b959a714c90608/requests-2.22.0.tar.gz"
    sha256 "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/de/a2/f55312dfe2f7a344d0d4044fdfae12ac8a24169dc668bd55f72b27090c32/requests-oauthlib-1.2.0.tar.gz"
    sha256 "bd6533330e8748e94bf0b214775fed487d309b8b8fe823dc45641ebcd9a32f57"
  end

  resource "scp" do
    url "https://files.pythonhosted.org/packages/05/e0/ac4169e773e12a08d941ca3c006cb8c91bee9d6d80328a15af850b5e7480/scp-0.13.2.tar.gz"
    sha256 "ef9d6e67c0331485d3db146bf9ee9baff8a48f3eb0e6c08276a8584b13bf34b3"
  end

  resource "semver" do
    url "https://files.pythonhosted.org/packages/31/a9/b61190916030ee9af83de342e101f192bbb436c59be20a4cb0cdb7256ece/semver-2.13.0.tar.gz"
    sha256 "fa0fe2722ee1c3f57eac478820c3a5ae2f624af8264cbdf9000c980ff7f75e3f"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/21/9f/b251f7f8a76dec1d6651be194dfba8fb8d7781d10ab3987190de8391d08e/six-1.14.0.tar.gz"
    sha256 "236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a"
  end

  resource "sshtunnel" do
    url "https://files.pythonhosted.org/packages/c5/5c/4b320d7ec4b0d5d4d6df1fdf66a5799625b3623d0ce4efe81719c6f8dfb3/sshtunnel-0.1.5.tar.gz"
    sha256 "c813fdcda8e81c3936ffeac47cb69cfb2d1f5e77ad0de656c6dab56aeebd9249"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/c2/fd/202954b3f0eb896c53b7b6f07390851b1fd2ca84aa95880d7ae4f434c4ac/tabulate-0.8.3.tar.gz"
    sha256 "8af07a39377cee1103a5c8b3330a421c2d99b9141e9cc5ddd2e3263fea416943"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/05/8c/40cd6949373e23081b3ea20d5594ae523e681b6f472e600fbc95ed046a36/urllib3-1.25.9.tar.gz"
    sha256 "3018294ebefce6572a474f0604c2021e33b3fd8006ecd11d62107a5d2a963527"
  end

  resource "vsts" do
    url "https://files.pythonhosted.org/packages/ce/fa/4405cdb2a6b0476a94b24254cdfb1df7ff43138a91ccc79cd6fc877177af/vsts-0.1.25.tar.gz"
    sha256 "da179160121f5b38be061dbff29cd2b60d5d029b2207102454d77a7114e64f97"
  end

  resource "vsts-cd-manager" do
    url "https://files.pythonhosted.org/packages/fc/cd/29c798a92d5f7a718711e4beace03612c93ad7ec2121aea606d8abae38ee/vsts-cd-manager-1.0.2.tar.gz"
    sha256 "0bb09059cd553e1c206e92ef324cb0dcf92334846d646c44c684f6256b86447b"
  end

  resource "websocket_client" do
    url "https://files.pythonhosted.org/packages/c5/01/8c9c7de6c46f88e70b5a3276c791a2be82ae83d8e0d0cc030525ee2866fd/websocket_client-0.56.0.tar.gz"
    sha256 "1fd5520878b68b84b5748bb30e592b10d0a91529d5383f74f4964e72b297fd3a"
  end

  resource "xmltodict" do
    url "https://files.pythonhosted.org/packages/58/40/0d783e14112e064127063fbf5d1fe1351723e5dfe9d6daad346a305f6c49/xmltodict-0.12.0.tar.gz"
    sha256 "50d8c638ed7ecb88d90561beedbf720c9b4e851a9fa6c47ebd64e99d166d8a21"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/ce/b0/757db659e8b91cb3ea47d90350d7735817fe1df36086afc77c1c4610d559/zipp-3.4.0.tar.gz"
    sha256 "ed5eee1974372595f9e416cc7bbeeb12335201d8081ca8a0743c954d4446e5cb"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resources

    # Get the CLI components we'll install
    components = [
      buildpath/"src/azure-cli",
      buildpath/"src/azure-cli-telemetry",
      buildpath/"src/azure-cli-core",
    ]

    # Install CLI
    components.each do |item|
      cd item do
        venv.pip_install item
      end
    end

    (bin/"az").write <<~EOS
      #!/usr/bin/env bash
      AZ_INSTALLER=HOMEBREW #{libexec}/bin/python -m azure.cli \"$@\"
    EOS

    bash_completion.install "az.completion" => "az"
  end

  test do
    json_text = shell_output("#{bin}/az cloud show --name AzureCloud")
    azure_cloud = JSON.parse(json_text)
    assert_equal azure_cloud["name"], "AzureCloud"
    assert_equal azure_cloud["endpoints"]["management"], "https://management.core.windows.net/"
    assert_equal azure_cloud["endpoints"]["resourceManager"], "https://management.azure.com/"
  end
end
