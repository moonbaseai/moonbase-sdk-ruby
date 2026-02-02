# Changelog

## 0.1.0-alpha.6 (2026-02-02)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/moonbaseai/moonbase-sdk-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Features

* **api:** manual updates ([3fabc34](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/3fabc347ce289a3cf8a0d266219f6320c0d63a07))
* **api:** update api ([67b52a7](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/67b52a7e5c9c0312670f818c8d353d6cf1e3e114))
* **api:** update api ([266db3c](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/266db3cae310dde0535bedffc9301f7d323fd324))
* **api:** update api ([61328d7](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/61328d780497bea423ba771067b1671eb9a1affe))
* **api:** update api ([99148fb](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/99148fb1ccc82fe89fed858e8a4ef8f83e61bd18))
* **api:** update api ([f72362d](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/f72362d2c0edda3ef713e9834c10765d20535ace))
* **api:** update api ([e6de27d](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/e6de27d2e8f278950aa8efc8dcc61fb9eafa8d80))
* **api:** update api ([24fea89](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/24fea8937042cea67553662c0e28cfd37213875d))
* **api:** update api ([f727cb9](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/f727cb9ae1f955ac86505c88d97fd046e87de23f))
* **api:** update api ([f92062d](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/f92062d2ab7faa01a758f5467ef9158509f650df))


### Bug Fixes

* calling `break` out of streams should be instantaneous ([669b9e0](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/669b9e04e0a4df3b369ad09493141b3269ab1239))
* **docs:** fix mcp installation instructions for remote servers ([b89453f](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/b89453fc5700368eb90d41a30c9628b72ca6cf25))
* issue where json.parse errors when receiving HTTP 204 with nobody ([11743f4](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/11743f4f99f5b5f5642ad6a2e99ad1ed0552b7cb))


### Chores

* explicitly require "base64" gem ([0020e52](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/0020e52aa7744eb5a0fb9b833c98c21b34fcada5))
* fix typo in descriptions ([b511675](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/b5116752b586884b9e1f95b16b9e7147a607af1b))
* **internal:** codegen related update ([fe17b8f](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/fe17b8f522eca3e43b29d402a69bbc179bfe7f8c))
* **internal:** update `actions/checkout` version ([62a7cbd](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/62a7cbdefb02014c5bbc9b1fd3fdbc548ee81e8f))
* move `cgi` into dependencies for ruby 4 ([c6a0551](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/c6a0551112137d81fafc80bad14c15ee9ac161e1))


### Documentation

* **api:** update meeting params ([1a643e7](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/1a643e7054aeeaf4e414579c9bfb4127663845a9))
* prominently feature MCP server setup in root SDK readmes ([82a0fbe](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/82a0fbee2562cd984c5eab13e3650aeda331ae9a))

## 0.1.0-alpha.5 (2025-11-13)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/moonbaseai/moonbase-sdk-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Features

* Add PATCH /v0/meetings/{id} ([2cb2339](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/2cb23391e356cd92aae56c0c1509f73018260482))
* **api:** manual updates ([fa67751](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/fa67751e7ec83a1f1ce33c47e8c94b5ab3ae31d6))
* **api:** update api ([e3c9ad0](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/e3c9ad0433de6cddd5f4a903d1593fac88efd9c9))
* expose response headers for both streams and errors ([39b34b0](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/39b34b0c68a778fd30d6349e577c8f64b1ff647d))
* handle thread interrupts in the core HTTP client ([ecedb52](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/ecedb5205ba87a29e5d650ca6d1600348c813c17))


### Bug Fixes

* absolutely qualified uris should always override the default ([4f9d377](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/4f9d3776eec58bf9d57dd060bbd69b28c4b11acf))
* always send `filename=...` for multipart requests where a file is expected ([67a4aca](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/67a4aca74fb0f190800c6a514a2778453ff35c33))
* better thread safety via early initializing SSL store during HTTP client creation ([bd6d5d3](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/bd6d5d3ee42ef1218cebc1de4a20a7bec6df604c))
* coroutine leaks from connection pool ([ca7118b](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/ca7118b2108de43ef1fd07759a99cc4712777444))
* shorten multipart boundary sep to less than RFC specificed max length ([1325f54](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/1325f5410253d8f6bb41ef20552d95b452021185))
* should not reuse buffers for `IO.copy_stream` interop ([2a7f948](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/2a7f9482c054c3c7cc1a5ee89fcc10334db8f4fa))


### Performance Improvements

* faster code formatting ([84f021f](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/84f021fc5251a01d8b836bcaa09de27ee8898f29))


### Chores

* allow fast-format to use bsd sed as well ([80db719](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/80db719c03aad42092719fdedca8b54a1cae95cc))
* bump dependency version and update sorbet types ([22aaba5](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/22aaba59955a621fb070d977b654212cb1f0d45e))
* do not install brew dependencies in ./scripts/bootstrap by default ([91df728](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/91df728ae9d09148f185043a8193bc7235bf4884))
* ignore linter error for tests having large collections ([c0059a2](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/c0059a249133f0c39f08ba3a3418cfb8117e3890))
* **internal:** codegen related update ([dc876ed](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/dc876ed1ccfb8994dc415b23fa4b1bf3bfe6a2b0))

## 0.1.0-alpha.4 (2025-09-12)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/moonbaseai/moonbase-sdk-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Features

* Improve examples of API errors ([840de2a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/840de2a8ea5438cc3f50f31fc13caba3469926a7))


### Documentation

* improve webhook endpoints examples ([c7851fe](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/c7851fe6f336b8892ae016fdc8ac97175a71124f))


### Refactors

* rename ChoiceFieldOption label to name for consistency ([0a9ef9a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/0a9ef9a75fb619b856d70c68ccb147ef5909b32a))

## 0.1.0-alpha.3 (2025-09-09)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/moonbaseai/moonbase-sdk-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* **api:** add upsert endpoint for Calls ([49f5d8b](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/49f5d8ba47a28db59bad127bc05eac4e0f9a633f))
* **api:** example updates ([114461f](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/114461f72a1c27e3a224951d5d661fb6582629bf))
* **api:** manual updates ([42ca387](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/42ca387aef32e69ef374da891d2827e90be2dfcf))
* **api:** manual updates ([bd4f562](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/bd4f562b63b9734973f58e847705179832d96d1d))
* **api:** update api ([3c936d8](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/3c936d8ce71d916a37c04857a93ff555056e4736))
* **api:** update api ([795b44a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/795b44a4554147f4cbccd7b351b7573a9452fe9f))
* **api:** update api ([d28791e](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/d28791ef6f7ab373bc2ae9350275ce5511f52de2))
* **api:** update api ([977698b](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/977698b4dca5b936ef1d30fc1176a4f8a75ba369))
* **api:** update api ([ce6cc96](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/ce6cc96f4d63c37cb42c82340da9896464a2fb5b))
* **api:** update examples ([6bf6d02](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/6bf6d02310d75113aa36e17d8c1e28f9843a36ac))


### Bug Fixes

* bump sorbet version and fix new type errors from the breaking change ([3e841f1](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/3e841f1801c46fc89d153451d27447bd86872ccf))
* **internal:** ensure sorbet test always runs serially ([8bbd082](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/8bbd082008a24ad6cab5ed4db6315f36a51ab188))


### Chores

* add json schema comment for rubocop.yml ([bad582b](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/bad582b492d24b1c29fb881579c25f14ad3caf5a))
* collect metadata from type DSL ([41b4aa2](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/41b4aa2c95ac095ade50529708937c420aa298ef))
* **internal:** increase visibility of internal helper method ([1488a31](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/1488a31652ff51db82e55817dda619ccc15af1f1))
* **internal:** update comment in script ([ea69129](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/ea691297748c28edf7f82a092347064d91b1e43e))
* **internal:** version bump ([7b29a82](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/7b29a824aee8dd442bb24a8727e68e632f0e4735))
* update @stainless-api/prism-cli to v5.15.0 ([1ec7555](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/1ec7555d115c3852f795c8a755330b004c238206))
* update contribute.md ([2cf4a7f](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/2cf4a7ff9f0f8646948c08a0078bec16edf468a0))

## 0.1.0-alpha.2 (2025-07-20)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/moonbaseai/moonbase-sdk-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Bug Fixes

* pagination ([9df3651](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/9df3651ce1f892a6b35296f682f69c69cc5e6d3c))


### Chores

* **internal:** version bump ([a0c7295](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/a0c7295af7e0e78d77bc45b2a816a662a127089f))

## 0.1.0-alpha.1 (2025-07-18)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/moonbaseai/moonbase-sdk-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** update api ([f2948aa](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/f2948aab4fb4ffd7124aa0487c94242378503ce7))
* **api:** update api ([600d12e](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/600d12e5dd413197b09185f68e90dcd1640af36a))
* **api:** update via SDK Studio ([8d19a7e](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/8d19a7e33f50d255ac83920aef5c56ec7fd2c75e))
* **api:** update via SDK Studio ([0996feb](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/0996febdf53664c58b8d002976d9fd9ef4ecfbf3))
* **api:** update via SDK Studio ([157b1eb](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/157b1ebbfbbce7c7c30d6a556e94654207fffb51))
* **api:** update via SDK Studio ([9f2a7bc](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/9f2a7bcb146f65c4e8f01b19bf46904455260eb9))
* **api:** update via SDK Studio ([adfb496](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/adfb496f70ffce968570156713901c1372f30c42))
* **api:** update via SDK Studio ([a8eb0d0](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/a8eb0d03686341d3151f503147ecd0f3eb99ab6a))
* **api:** update via SDK Studio ([6f3dd5b](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/6f3dd5bb3f91a28ddaf386e2b5ba70b67be90871))
* **api:** update via SDK Studio ([59dfa69](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/59dfa69a48053881c7b212e4b8e1060e5ad2e0e2))
* **api:** update via SDK Studio ([b883a3d](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/b883a3d5da73c546d4abd1cf14797f1b89ce4001))
* **api:** update via SDK Studio ([15be391](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/15be39126ae379ca26243574558a9dce824e1a9a))
* **api:** update via SDK Studio ([caa1f3a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/caa1f3a6e2cc78aa54bddec429e67f17dd569884))
* **api:** update via SDK Studio ([bead990](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/bead990304a44be95d1cb2e31d14cabc08b6f194))
* **api:** update via SDK Studio ([0b1f04c](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/0b1f04cd8fe0fc6c79b0a76f368fab170fa775a6))
* **api:** update via SDK Studio ([eb289d8](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/eb289d884d8d94ededc2744329c57b0458c1f9f3))
* **api:** update via SDK Studio ([8f9004a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/8f9004abab6ce46ed31abceabd3adb2b20cff53c))
* **api:** update via SDK Studio ([9aa1387](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/9aa1387e631666cb1a6392a6d767e0847f7112b1))
* **api:** update via SDK Studio ([2a7236a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/2a7236ab86afd325477d4f4a81eb4e4db4c7074d))
* **api:** update via SDK Studio ([8e67603](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/8e67603df70b6abcbc03dd798445312630e688ae))
* **api:** update via SDK Studio ([31579c0](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/31579c02dc830238347e976882f8a6c094068450))
* **api:** update via SDK Studio ([7bda282](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/7bda282a2225d7330f05dc4a760ae1c36ba139ea))
* **api:** update via SDK Studio ([d6923fa](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/d6923fa5ad86b63ce4be6f01a670ca94af8de041))
* **api:** update via SDK Studio ([8446b19](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/8446b19b26bf6bffa651010c282a31621641a96f))
* **api:** update via SDK Studio ([5bc1671](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/5bc1671a88fb273605d64b2371e12ee07d6fa0aa))
* **api:** update via SDK Studio ([075de3a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/075de3a72e617078cda5b485b2f206f430280563))
* **api:** update via SDK Studio ([7802e4a](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/7802e4a0662990f04ad77f4e66efb4d1f076da11))
* **api:** update via SDK Studio ([b7be8f4](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/b7be8f4c0ed3e45546d223a89878ff9c52524ebb))
* **api:** update via SDK Studio ([6372526](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/637252659fc42f12898340988c88e25badf8097d))
* **api:** update via SDK Studio ([6137d9f](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/6137d9fabe87318dd6801c1b2034c068c1f52457))
* **api:** update via SDK Studio ([e66a6df](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/e66a6df076047ea933f9b52d52ea22a2d8aed6f0))
* **api:** update via SDK Studio ([33d123f](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/33d123f264a525f9a5d3b3d612f35c740e9ec6ab))
* **api:** update via SDK Studio ([4a59966](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/4a5996675baab3cb60e93e6222e24c33fc8a410d))


### Bug Fixes

* ItemCreateParams should inherit from BaseModel ([24047e8](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/24047e844974937e7f0af8dc83c93b1731681518))
* The gem name should use a hypen, not an underscore ([43e902c](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/43e902c5259ff5564d473b7524b868c67381d03b))


### Chores

* configure new SDK language ([760c28e](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/760c28ef10b8a3f9b368e199ed72125ac5af9e27))
* remove custom code ([6a3c4d8](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/6a3c4d80bacda50c85fc1ef95980ad0f36db8ad0))
* ruby config ([7f2535b](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/7f2535b2ead23e2f20bb4bad55333a8a3a9c6411))
* Update license ([9151326](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/9151326b8f511f770271491dc5744da7b3173b83))
* Update README to match the gem's name ([bd71543](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/bd7154362af6e8e574f579369ce821d9e2b743ba))
* update SDK settings ([3923803](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/3923803ee8feda3194fbf546a4ca8a55283357d6))
* Use "moonbase_sdk" for the gem ([d94a5f2](https://github.com/moonbaseai/moonbase-sdk-ruby/commit/d94a5f2b7654cc58becfeb8ec90ab0e67e7ec92b))
