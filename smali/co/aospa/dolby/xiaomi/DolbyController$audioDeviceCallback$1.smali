.class public final Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;
.super Landroid/media/AudioDeviceCallback;
.source "DolbyController.kt"


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/DolbyController;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/DolbyController;)V
    .locals 0

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;->this$0:Lco/aospa/dolby/xiaomi/DolbyController;

    .line 42
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    const-string v0, "addedDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v0, "DolbyController"

    const-string v1, "onAudioDevicesAdded"

    invoke-virtual {p1, v0, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;->this$0:Lco/aospa/dolby/xiaomi/DolbyController;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->access$setCurrentProfile(Lco/aospa/dolby/xiaomi/DolbyController;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 2

    const-string v0, "removedDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v0, "DolbyController"

    const-string v1, "onAudioDevicesRemoved"

    invoke-virtual {p1, v0, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;->this$0:Lco/aospa/dolby/xiaomi/DolbyController;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->access$setCurrentProfile(Lco/aospa/dolby/xiaomi/DolbyController;)V

    return-void
.end method
