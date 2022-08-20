# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule VRChat.Model.ApiConfig do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :VoiceEnableDegradation,
    :VoiceEnableReceiverLimiting,
    :address,
    :announcements,
    :apiKey,
    :appName,
    :buildVersionTag,
    :clientApiKey,
    :clientBPSCeiling,
    :clientDisconnectTimeout,
    :clientReservedPlayerBPS,
    :clientSentCountAllowance,
    :contactEmail,
    :copyrightEmail,
    :currentTOSVersion,
    :defaultAvatar,
    :deploymentGroup,
    :devAppVersionStandalone,
    :devDownloadLinkWindows,
    :devSdkUrl,
    :devSdkVersion,
    :devServerVersionStandalone,
    :"dis-countdown",
    :disableAvatarCopying,
    :disableAvatarGating,
    :disableCommunityLabs,
    :disableCommunityLabsPromotion,
    :disableEmail,
    :disableEventStream,
    :disableFeedbackGating,
    :disableFrontendBuilds,
    :disableHello,
    :disableOculusSubs,
    :disableRegistration,
    :disableSteamNetworking,
    :disableTwoFactorAuth,
    :disableUdon,
    :disableUpgradeAccount,
    :downloadLinkWindows,
    :downloadUrls,
    :dynamicWorldRows,
    :events,
    :gearDemoRoomId,
    :homeWorldId,
    :homepageRedirectTarget,
    :hubWorldId,
    :jobsEmail,
    :messageOfTheDay,
    :moderationEmail,
    :moderationQueryPeriod,
    :notAllowedToSelectAvatarInPrivateWorldMessage,
    :plugin,
    :releaseAppVersionStandalone,
    :releaseSdkUrl,
    :releaseSdkVersion,
    :releaseServerVersionStandalone,
    :sdkDeveloperFaqUrl,
    :sdkDiscordUrl,
    :sdkNotAllowedToPublishMessage,
    :sdkUnityVersion,
    :serverName,
    :supportEmail,
    :timeOutWorldId,
    :tutorialWorldId,
    :updateRateMsMaximum,
    :updateRateMsMinimum,
    :updateRateMsNormal,
    :updateRateMsUdonManual,
    :uploadAnalysisPercent,
    :urlList,
    :useReliableUdpForVoice,
    :userUpdatePeriod,
    :userVerificationDelay,
    :userVerificationRetry,
    :userVerificationTimeout,
    :viveWindowsUrl,
    :whiteListedAssetUrls,
    :worldUpdatePeriod,
    :"youtubedl-hash",
    :"youtubedl-version"
  ]

  @type t :: %__MODULE__{
    :VoiceEnableDegradation => boolean(),
    :VoiceEnableReceiverLimiting => boolean(),
    :address => String.t,
    :announcements => [VRChat.Model.PublicAnnouncement.t],
    :apiKey => String.t,
    :appName => String.t,
    :buildVersionTag => String.t,
    :clientApiKey => String.t,
    :clientBPSCeiling => integer(),
    :clientDisconnectTimeout => integer(),
    :clientReservedPlayerBPS => integer(),
    :clientSentCountAllowance => integer(),
    :contactEmail => String.t,
    :copyrightEmail => String.t,
    :currentTOSVersion => integer(),
    :defaultAvatar => String.t,
    :deploymentGroup => VRChat.Model.DeploymentGroup.t,
    :devAppVersionStandalone => String.t,
    :devDownloadLinkWindows => String.t,
    :devSdkUrl => String.t,
    :devSdkVersion => String.t,
    :devServerVersionStandalone => String.t,
    :"dis-countdown" => DateTime.t,
    :disableAvatarCopying => boolean(),
    :disableAvatarGating => boolean(),
    :disableCommunityLabs => boolean(),
    :disableCommunityLabsPromotion => boolean(),
    :disableEmail => boolean(),
    :disableEventStream => boolean(),
    :disableFeedbackGating => boolean(),
    :disableFrontendBuilds => boolean(),
    :disableHello => boolean(),
    :disableOculusSubs => boolean(),
    :disableRegistration => boolean(),
    :disableSteamNetworking => boolean(),
    :disableTwoFactorAuth => boolean(),
    :disableUdon => boolean(),
    :disableUpgradeAccount => boolean(),
    :downloadLinkWindows => String.t,
    :downloadUrls => VRChat.Model.DownloadUrlList.t,
    :dynamicWorldRows => [VRChat.Model.DynamicContentRow.t],
    :events => VRChat.Model.ApiEventConfig.t,
    :gearDemoRoomId => String.t,
    :homeWorldId => String.t,
    :homepageRedirectTarget => String.t,
    :hubWorldId => String.t,
    :jobsEmail => String.t,
    :messageOfTheDay => String.t,
    :moderationEmail => String.t,
    :moderationQueryPeriod => integer(),
    :notAllowedToSelectAvatarInPrivateWorldMessage => String.t,
    :plugin => String.t,
    :releaseAppVersionStandalone => String.t,
    :releaseSdkUrl => String.t,
    :releaseSdkVersion => String.t,
    :releaseServerVersionStandalone => String.t,
    :sdkDeveloperFaqUrl => String.t,
    :sdkDiscordUrl => String.t,
    :sdkNotAllowedToPublishMessage => String.t,
    :sdkUnityVersion => String.t,
    :serverName => String.t,
    :supportEmail => String.t,
    :timeOutWorldId => String.t,
    :tutorialWorldId => String.t,
    :updateRateMsMaximum => integer(),
    :updateRateMsMinimum => integer(),
    :updateRateMsNormal => integer(),
    :updateRateMsUdonManual => integer(),
    :uploadAnalysisPercent => integer(),
    :urlList => [String.t],
    :useReliableUdpForVoice => boolean(),
    :userUpdatePeriod => integer(),
    :userVerificationDelay => integer(),
    :userVerificationRetry => integer(),
    :userVerificationTimeout => integer(),
    :viveWindowsUrl => String.t,
    :whiteListedAssetUrls => [String.t],
    :worldUpdatePeriod => integer(),
    :"youtubedl-hash" => String.t,
    :"youtubedl-version" => String.t
  }
end

defimpl Poison.Decoder, for: VRChat.Model.ApiConfig do
  import VRChat.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:announcements, :list, VRChat.Model.PublicAnnouncement, options)
    |> deserialize(:deploymentGroup, :struct, VRChat.Model.DeploymentGroup, options)
    |> deserialize(:downloadUrls, :struct, VRChat.Model.DownloadUrlList, options)
    |> deserialize(:dynamicWorldRows, :list, VRChat.Model.DynamicContentRow, options)
    |> deserialize(:events, :struct, VRChat.Model.ApiEventConfig, options)
  end
end

