.class public final Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;
.super Landroid/media/AudioDeviceCallback;
.source "DolbySettingsFragment.kt"


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    .line 89
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    const-string v0, "addedDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v0, "DolbySettingsFragment"

    const-string v1, "onAudioDevicesAdded"

    invoke-virtual {p1, v0, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->access$updateSpeakerState(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    const-string v0, "removedDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v0, "DolbySettingsFragment"

    const-string v1, "onAudioDevicesRemoved"

    invoke-virtual {p1, v0, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->access$updateSpeakerState(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    return-void
.end method
