class Openstackclient < Formula
  include Language::Python::Virtualenv

  desc "Command-line client for OpenStack"
  homepage "https://openstack.org"
  url "https://files.pythonhosted.org/packages/02/0d/18025e48934e59768a085cb4393bebd385be2c4da1d39b4095ab48a321bf/python-openstackclient-5.4.0.tar.gz"
  sha256 "21d228d600421ad5145f31178cdc8578df7d2e569f43381c654caae5a1993b67"
  license "Apache-2.0"
  revision 3

  bottle do
    sha256 cellar: :any,                 arm64_big_sur: "efa827b3bf78979962f0883719229c1c250d1fc1a6e0fa16940f9c80cd1c5ac7"
    sha256 cellar: :any,                 big_sur:       "d457a82ceb9d43b5089b03f3d94aa15e5ff08fbd95dc82b107f368c3b3eaa169"
    sha256 cellar: :any,                 catalina:      "883710d6c9447fc21749e21907ea4ac6899de08b53e9b1f8875df4e5530cab50"
    sha256 cellar: :any,                 mojave:        "562b0c8618c43e49b36f1dfe66997d1d260478cae70eab6d60db16672f9c543c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "24a1bc2c4d4d4fa6163239b74a7e36b499f73760d7d6274f0cb7bcf9559f7886"
  end

  depends_on "python@3.9"

  resource "appdirs" do
    url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
    sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/f0/cb/80a4a274df7da7b8baf083249b0890a0579374c3d74b5ac0ee9291f912dc/attrs-20.3.0.tar.gz"
    sha256 "832aa3cde19744e49938b91fea06d69ecb9e649c93ba974535d08ad92164f700"
  end

  resource "Babel" do
    url "https://files.pythonhosted.org/packages/41/1b/5ed6e564b9ca54318df20ebe5d642ab25da4118df3c178247b8c4b26fa13/Babel-2.9.0.tar.gz"
    sha256 "da031ab54472314f210b0adcff1588ee5d1d1d0ba4dbd07b94dba82bde791e05"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc397a/certifi-2020.12.5.tar.gz"
    sha256 "1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/66/6a/98e023b3d11537a5521902ac6b50db470c826c682be6a8c661549cb7717a/cffi-1.14.4.tar.gz"
    sha256 "1a465cbe98a7fd391d47dce4b8f7e5b921e6cd805ef421d04f5f66ba8f06086c"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "cliff" do
    url "https://files.pythonhosted.org/packages/6e/82/97ae0291e339eb6992a8d58aca5caa337ee9e6c465e909cdd8fb8015d835/cliff-3.6.0.tar.gz"
    sha256 "a3f4fa67eeafbcfa7cf9fe4b1755d410876528e1d0d115740db00b50a1250272"
  end

  resource "cmd2" do
    url "https://files.pythonhosted.org/packages/c1/76/98f8767ddc8febfbd6367b2fcd391cd92087496d00e58ad99008e126035e/cmd2-1.4.0.tar.gz"
    sha256 "e59fa932418603af4e046a96c8985812b05af8a73bfd9d7a386cd1b02c6ab687"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/b7/82/f7a4ddc1af185936c1e4fa000942ffa8fb2d98cff26b75afa7b3c63391c4/cryptography-3.3.1.tar.gz"
    sha256 "7e177e4bea2de937a584b13645cab32f25e3d96fc0bc4a4cf99c27dc77682be6"
  end

  resource "debtcollector" do
    url "https://files.pythonhosted.org/packages/43/db/878dd456ccdbba6e466fc91e2534fd183a345a3fe261c4780a0e46c6dab0/debtcollector-2.2.0.tar.gz"
    sha256 "787981f4d235841bf6eb0467e23057fb1ac7ee24047c32028a8498b9128b6829"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/da/93/84fa12f2dc341f8cf5f022ee09e109961055749df2d0c75c5f98746cfe6c/decorator-4.4.2.tar.gz"
    sha256 "e3a62f0520172440ca0dcc823749319382e377f37f140a0b99ef45fecb84bfe7"
  end

  resource "dogpile.cache" do
    url "https://files.pythonhosted.org/packages/88/21/711eab73f7e8c2c755f0123deafa4ceaf47c0a9282e386b20a2e22c49645/dogpile.cache-1.1.1.tar.gz"
    sha256 "40147b19696f387415a7efaaa4cf8ea0b5d31bdd1b53e5187e75d48ddfee9f0e"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz"
    sha256 "b307872f855b18632ce0c21c5e45be78c0ea7ae4c15c828c20788b26921eb3f6"
  end

  resource "iso8601" do
    url "https://files.pythonhosted.org/packages/05/90/2d9927dc2d33192f58fe39d2d216313a8380625cd4b062efb93f1afd7a29/iso8601-0.1.13.tar.gz"
    sha256 "f7dec22af52025d4526be94cc1303c7d8f5379b746a3f54a8c8446384392eeb1"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/4f/42/c171c0090a5cd8e4b59515b35ac0bcc1a097481a738cadccdaf7aff87094/jsonpatch-1.28.tar.gz"
    sha256 "e930adc932e4d36087dbbf0f22e1ded32185dfb20662f2e3dd848677a5295a14"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/52/e7/246d9ef2366d430f0ce7bdc494ea2df8b49d7a2a41ba51f5655f68cfe85f/jsonpointer-2.0.tar.gz"
    sha256 "c192ba86648e05fdae4f08a17ec25180a9aef5008d973407b581798a83975362"
  end

  resource "keystoneauth1" do
    url "https://files.pythonhosted.org/packages/9b/ca/714179dcdee532cdc67f7f82c4a83137ab9653c7c121c7db2839db1dac32/keystoneauth1-4.3.0.tar.gz"
    sha256 "e3fa55b58f082e4d753ae3fe599f3d74c591fd9cb8286879ff532a78955163f1"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/59/04/87fc6708659c2ed3b0b6d4954f270b6e931def707b227c4554f99bd5401e/msgpack-1.0.2.tar.gz"
    sha256 "fae04496f5bc150eefad4e9571d1a76c55d021325dcd484ce45065ebbdd00984"
  end

  resource "munch" do
    url "https://files.pythonhosted.org/packages/43/a1/ec48010724eedfe2add68eb7592a0d238590e14e08b95a4ffb3c7b2f0808/munch-2.5.0.tar.gz"
    sha256 "2d735f6f24d4dba3417fa448cae40c6e896ec1fdab6cdb5e6510999758a4dbd2"
  end

  resource "netaddr" do
    url "https://files.pythonhosted.org/packages/c3/3b/fe5bda7a3e927d9008c897cf1a0858a9ba9924a6b4750ec1824c9e617587/netaddr-0.8.0.tar.gz"
    sha256 "d6cc57c7a07b1d9d2e917aa8b36ae8ce61c35ba3fcd1b83ca31c5a0ee2b5a243"
  end

  resource "netifaces" do
    url "https://files.pythonhosted.org/packages/0d/18/fd6e9c71a35b67a73160ec80a49da63d1eed2d2055054cc2995714949132/netifaces-0.10.9.tar.gz"
    sha256 "2dee9ffdd16292878336a58d04a20f0ffe95555465fee7c9bd23b3490ef2abf3"
  end

  resource "openstacksdk" do
    url "https://files.pythonhosted.org/packages/1a/dc/b5099bdb4e280b922b7fd0c46d8549387ca96a8e64eefa7449fca0a2758d/openstacksdk-0.53.0.tar.gz"
    sha256 "3500f2a7b3c317db255510dea6ff59500b4525899f4a083acf764546ea427402"
  end

  resource "os-service-types" do
    url "https://files.pythonhosted.org/packages/58/3f/09e93eb484b69d2a0d31361962fb667591a850630c8ce47bb177324910ec/os-service-types-1.7.0.tar.gz"
    sha256 "31800299a82239363995b91f1ebf9106ac7758542a1e4ef6dc737a5932878c6c"
  end

  resource "osc-lib" do
    url "https://files.pythonhosted.org/packages/f4/70/a92bb13b8eaf13be71e72d5137c338279eb139dddc8b146b9849f5e20259/osc-lib-2.3.1.tar.gz"
    sha256 "f7d178dc6fcf5e5c069206e4fcf7206bf6369e3c855ec5b8498c7f6bb28be75e"
  end

  resource "oslo.config" do
    url "https://files.pythonhosted.org/packages/14/88/325b81ae07657b6135cd52c0dbc0a19f0817ef7dff0f57753282a828a50a/oslo.config-8.4.0.tar.gz"
    sha256 "537d62c581de2227aebfc4c71ee6fb455b853be920e0b30b65ebbe8d8128725c"
  end

  resource "oslo.i18n" do
    url "https://files.pythonhosted.org/packages/de/6f/e8343be26e69e42b3d30610c3ffee576e5b901be6792e5c3af1384613b40/oslo.i18n-5.0.1.tar.gz"
    sha256 "3484b71e30f75c437523302d1151c291caf4098928269ceec65ce535456e035b"
  end

  resource "oslo.serialization" do
    url "https://files.pythonhosted.org/packages/bb/9e/1a2a571ec7879dcd1fe3719255ecaf0ff97d8a84c5d72a6df6e4033be684/oslo.serialization-4.0.1.tar.gz"
    sha256 "f84d3dca7ffbb86394e273094c674532b6144223eca8990a38836ba99728d53e"
  end

  resource "oslo.utils" do
    url "https://files.pythonhosted.org/packages/a2/ac/7539cc1dc182abcd7fb3c4721d35203bc365415dff2b201f5de72e4fa6f6/oslo.utils-4.7.0.tar.gz"
    sha256 "b95b02c60dd4fac00d46525f73d27dc4e196c19281215aea84e8d389466b1b90"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d7/c5/e81b9fb8033fe78a2355ea7b1774338e1dca2c9cbd2ee140211a9e6291ab/packaging-20.8.tar.gz"
    sha256 "78598185a7008a470d64526a8059de9aaa449238f280fc9eb6b13ba6c4109093"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/65/e2/8cb5e718a3a63e8c22677fde5e3d8d18d12a551a1bbd4557217e38a97ad0/pbr-5.5.1.tar.gz"
    sha256 "5fad80b613c402d5b7df7bd84812548b2a61e9977387a80a5fc5c396492b13c9"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/ef/30/4b0746848746ed5941f052479e7c23d2b56d174b82f4fd34a25e389831f5/prettytable-0.7.2.tar.bz2"
    sha256 "853c116513625c738dc3ce1aee148b5b5757a86727e67eff6502c7ca59d43c36"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz"
    sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/6f/4c/0b1d507ad7e8bc31d690d04b4f475e74c2002d060f7994ce8c09612df707/pyperclip-1.8.1.tar.gz"
    sha256 "9abef1e79ce635eb62309ecae02dfb5a3eb952fa7d6dce09c1aef063f81424d3"
  end

  resource "python-cinderclient" do
    url "https://files.pythonhosted.org/packages/b0/d1/3cd271a0e9a0b4b5e7d8582d8de976454a5eb799089870a675019790f6a9/python-cinderclient-7.3.0.tar.gz"
    sha256 "928eb45616eb4146e3ab21534b2c87723298fbf02957bcf219408abfe7f4fc67"
  end

  resource "python-heatclient" do
    url "https://files.pythonhosted.org/packages/21/3e/9b8291832fa40bb39d46e13a8327705460ab3fb25c46c950f0fafec9ceaf/python-heatclient-2.3.0.tar.gz"
    sha256 "d6fe15e610523f96e1ee26e84e9d5fd06846a3fa72d352c38f1fc79abe7eb44a"
  end

  resource "python-keystoneclient" do
    url "https://files.pythonhosted.org/packages/0d/17/aaaa6e508ca437360eb348486d6ac7cf17e434400acd222548361959b4bd/python-keystoneclient-4.2.0.tar.gz"
    sha256 "0248426e483b95de395086482c077d48e45990d3b1a3e334b2ec8b2e108f5a8a"
  end

  resource "python-novaclient" do
    url "https://files.pythonhosted.org/packages/3b/58/03c306eb957e4c428484ba10d8a14696e03fae2a1cae8579f8aa8acf3f89/python-novaclient-17.3.0.tar.gz"
    sha256 "718e37d39739e9f3f504bf80875c883f1dafe653a08f3581bd21d3c0e83c7df0"
  end

  resource "python-swiftclient" do
    url "https://files.pythonhosted.org/packages/87/59/5f0657c8fa0f142d43a82cf4c69842eb578ad785b412e9e1b717a777afc4/python-swiftclient-3.11.0.tar.gz"
    sha256 "3972f8b1986e60ea786ad01697e6882f331209ae947ef8b795531940f1e0732b"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/70/44/404ec10dca553032900a65bcded8b8280cf7c64cc3b723324e2181bf93c9/pytz-2020.5.tar.gz"
    sha256 "180befebb1927b16f6b57101720075a984c019ac16b1b7575673bea42c6c3da5"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
    sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
  end

  resource "requestsexceptions" do
    url "https://files.pythonhosted.org/packages/82/ed/61b9652d3256503c99b0b8f145d9c8aa24c514caff6efc229989505937c1/requestsexceptions-1.4.0.tar.gz"
    sha256 "b095cbc77618f066d459a02b137b020c37da9f46d9b057704019c9f77dba3065"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/70/e2/1344681ad04a0971e8884b9a9856e5a13cc4824d15c047f8b0bbcc0b2029/rfc3986-1.4.0.tar.gz"
    sha256 "112398da31a3344dc25dbf477d8df6cb34f9278a94fee2625d89e4514be8bb9d"
  end

  resource "simplejson" do
    url "https://files.pythonhosted.org/packages/49/45/a16db4f0fa383aaf0676fb7e3c660304fe390415c243f41a77c7f917d59b/simplejson-3.17.2.tar.gz"
    sha256 "75ecc79f26d99222a084fbdd1ce5aad3ac3a8bd535cd9059528452da38b68841"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "stevedore" do
    url "https://files.pythonhosted.org/packages/95/bc/dc386a920942dbdfe480c8a4d953ff77ed3dec99ce736634b6ec4f2d97c1/stevedore-3.3.0.tar.gz"
    sha256 "3a5bbd0652bf552748871eaa73a4a8dc2899786bc497a2aa1fcb4dcdb0debeee"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/29/e6/d1a1d78c439cad688757b70f26c50a53332167c364edb0134cadd280e234/urllib3-1.26.2.tar.gz"
    sha256 "19188f96923873c92ccb987120ec4acaa12f0461fa9ce5d3d0772bc965a39e08"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/82/f7/e43cefbe88c5fd371f4cf0cf5eb3feccd07515af9fd6cf7dbf1d1793a797/wrapt-1.12.1.tar.gz"
    sha256 "b62ffa81fb85f4332a4f609cab4ac40709470da05643a082ec1eb88e6d9b97d7"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"openstack", "-h"
    openstack_subcommands = [
      "server list",
      "stack list",
    ]
    openstack_subcommands.each do |subcommand|
      output = shell_output("#{bin}/openstack #{subcommand} 2>&1", 1)
      assert_match "Missing value auth-url required", output
    end
  end
end
