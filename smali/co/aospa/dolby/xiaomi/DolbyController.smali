.class public final Lco/aospa/dolby/xiaomi/DolbyController;
.super Ljava/lang/Object;
.source "DolbyController.kt"


# static fields
.field public static final $stable:I

.field public static final Companion:Lco/aospa/dolby/xiaomi/DolbyController$Companion;

.field private static volatile instance:Lco/aospa/dolby/xiaomi/DolbyController;


# instance fields
.field private final audioDeviceCallback:Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;

.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

.field private final handler:Landroid/os/Handler;

.field private final playbackCallback:Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;

.field private registerCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/DolbyController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/DolbyController;->Companion:Lco/aospa/dolby/xiaomi/DolbyController$Companion;

    const/16 v0, 0x8

    sput v0, Lco/aospa/dolby/xiaomi/DolbyController;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    .line 25
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;-><init>(II)V

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    .line 26
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioManager:Landroid/media/AudioManager;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->handler:Landroid/os/Handler;

    .line 30
    new-instance p1, Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;-><init>(Lco/aospa/dolby/xiaomi/DolbyController;)V

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->playbackCallback:Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;

    .line 42
    new-instance p1, Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;

    invoke-direct {p1, p0}, Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;-><init>(Lco/aospa/dolby/xiaomi/DolbyController;)V

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioDeviceCallback:Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;

    .line 94
    sget-object p0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string p1, "DolbyController"

    const-string v0, "initialized"

    invoke-virtual {p0, p1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 1

    .line 22
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyController;->instance:Lco/aospa/dolby/xiaomi/DolbyController;

    return-object v0
.end method

.method public static final synthetic access$setCurrentProfile(Lco/aospa/dolby/xiaomi/DolbyController;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->setCurrentProfile()V

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lco/aospa/dolby/xiaomi/DolbyController;)V
    .locals 0

    .line 22
    sput-object p0, Lco/aospa/dolby/xiaomi/DolbyController;->instance:Lco/aospa/dolby/xiaomi/DolbyController;

    return-void
.end method

.method private final checkEffect()V
    .locals 3

    .line 164
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "DolbyController"

    const-string v1, "lost control, recreating effect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 167
    new-instance v0, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;-><init>(II)V

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    :cond_0
    return-void
.end method

.method public static synthetic getPreset$default(Lco/aospa/dolby/xiaomi/DolbyController;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getPreset(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final restoreSettings(I)V
    .locals 3

    .line 118
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSettings(profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    const-string v1, "dolby_preset"

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getPreset(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setPreset(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getIeqPreset(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v2, "dolby_ieq"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 124
    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setIeqPreset(II)V

    .line 132
    const-string v1, "dolby_virtualizer"

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getHeadphoneVirtEnabled(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setHeadphoneVirtEnabled(ZI)V

    .line 136
    const-string v1, "dolby_spk_virtualizer"

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getSpeakerVirtEnabled(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 135
    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setSpeakerVirtEnabled(ZI)V

    .line 142
    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getStereoWideningAmount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    const-string v2, "dolby_stereo"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 139
    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setStereoWideningAmount(II)V

    .line 149
    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getDialogueEnhancerAmount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "dolby_dialogue"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setDialogueEnhancerAmount(II)V

    .line 154
    const-string v1, "dolby_bass"

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getBassEnhancerEnabled(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 153
    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setBassEnhancerEnabled(ZI)V

    .line 158
    const-string v1, "dolby_volume"

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getVolumeLevelerEnabled(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 157
    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setVolumeLevelerEnabled(ZI)V

    return-void
.end method

.method public static synthetic setBassEnhancerEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 249
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setBassEnhancerEnabled(ZI)V

    return-void
.end method

.method private final setCurrentProfile()V
    .locals 3

    .line 172
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v1, "DolbyController"

    const-string v2, "setCurrentProfile"

    invoke-virtual {v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    const-string v1, "dolby_profile"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lco/aospa/dolby/xiaomi/DolbyController;->setProfile(I)V

    return-void
.end method

.method public static synthetic setDialogueEnhancerAmount$default(Lco/aospa/dolby/xiaomi/DolbyController;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 286
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setDialogueEnhancerAmount(II)V

    return-void
.end method

.method public static synthetic setHeadphoneVirtEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 227
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setHeadphoneVirtEnabled(ZI)V

    return-void
.end method

.method public static synthetic setIeqPreset$default(Lco/aospa/dolby/xiaomi/DolbyController;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 298
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setIeqPreset(II)V

    return-void
.end method

.method public static synthetic setPreset$default(Lco/aospa/dolby/xiaomi/DolbyController;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 201
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setPreset(Ljava/lang/String;I)V

    return-void
.end method

.method private final setRegisterCallbacks(Z)V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->registerCallbacks:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 57
    :cond_0
    iput-boolean p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->registerCallbacks:Z

    .line 58
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRegisterCallbacks("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->playbackCallback:Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 61
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioDeviceCallback:Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioManager:Landroid/media/AudioManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->playbackCallback:Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    .line 64
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->audioDeviceCallback:Lco/aospa/dolby/xiaomi/DolbyController$audioDeviceCallback$1;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :goto_0
    return-void
.end method

.method public static synthetic setSpeakerVirtEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 238
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setSpeakerVirtEnabled(ZI)V

    return-void
.end method

.method public static synthetic setStereoWideningAmount$default(Lco/aospa/dolby/xiaomi/DolbyController;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 271
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setStereoWideningAmount(II)V

    return-void
.end method

.method public static synthetic setVolumeLevelerEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 260
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setVolumeLevelerEnabled(ZI)V

    return-void
.end method


# virtual methods
.method public final getBassEnhancerEnabled(I)Z
    .locals 2

    .line 245
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->BASS_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterBool(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)Z

    move-result p0

    .line 246
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBassEnhancerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getDialogueEnhancerAmount(I)I
    .locals 3

    .line 278
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {v0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterBool(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterInt(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 282
    :goto_0
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogueEnhancerAmount: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " amount="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getDsOn()Z
    .locals 3

    .line 70
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDsOn()Z

    move-result p0

    .line 71
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDsOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getHeadphoneVirtEnabled(I)Z
    .locals 2

    .line 223
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->HEADPHONE_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterBool(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)Z

    move-result p0

    .line 224
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeadphoneVirtEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getIeqPreset(I)I
    .locals 2

    .line 294
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->IEQ_PRESET:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterInt(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)I

    move-result p0

    .line 295
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIeqPreset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getPreset(I)Ljava/lang/String;
    .locals 10

    .line 195
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->GEQ_BAND_GAINS:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)[I

    move-result-object v1

    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 196
    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 197
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPresetName()Ljava/lang/String;
    .locals 4

    .line 211
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 212
    invoke-static {p0, v3, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->getPreset$default(Lco/aospa/dolby/xiaomi/DolbyController;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 214
    const-string p0, "Custom"

    goto :goto_0

    .line 216
    :cond_0
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030030

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 218
    aget-object p0, p0, v0

    .line 216
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final getProfile()I
    .locals 3

    .line 84
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getProfile()I

    move-result p0

    .line 85
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getProfileName()Ljava/lang/String;
    .locals 5

    .line 178
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {v0}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getProfile()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "getStringArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 181
    sget-object v2, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileName: profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " index="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DolbyController"

    invoke-virtual {v2, v3, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 182
    :cond_0
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 184
    aget-object p0, p0, v1

    :goto_0
    return-object p0
.end method

.method public final getSpeakerVirtEnabled(I)Z
    .locals 2

    .line 234
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->SPEAKER_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterBool(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)Z

    move-result p0

    .line 235
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpeakerVirtEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getStereoWideningAmount(I)I
    .locals 2

    .line 267
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->STEREO_WIDENING_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterInt(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)I

    move-result p0

    .line 268
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStereoWideningAmount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final getVolumeLevelerEnabled(I)Z
    .locals 2

    .line 256
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->VOLUME_LEVELER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->getDapParameterBool(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;I)Z

    move-result p0

    .line 257
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolumeLevelerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyController"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final onBootCompleted()V
    .locals 5

    .line 98
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v1, "DolbyController"

    const-string v2, "onBootCompleted"

    invoke-virtual {v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    const-string v1, "dolby_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lco/aospa/dolby/xiaomi/DolbyController;->setDsOn(Z)V

    .line 104
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "getStringArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11065
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11400
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 105
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11401
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1855
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 108
    iget-object v2, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {v2, v1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->resetProfileSpecificSettings(I)V

    .line 110
    invoke-direct {p0, v1}, Lco/aospa/dolby/xiaomi/DolbyController;->restoreSettings(I)V

    goto :goto_1

    .line 114
    :cond_1
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->setCurrentProfile()V

    return-void
.end method

.method public final resetProfileSpecificSettings()V
    .locals 4

    .line 188
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v1, "DolbyController"

    const-string v2, "resetProfileSpecificSettings"

    invoke-virtual {v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 190
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->resetProfileSpecificSettings$default(Lco/aospa/dolby/xiaomi/DolbyAudioEffect;IILjava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    return-void
.end method

.method public final setBassEnhancerEnabled(ZI)V
    .locals 3

    .line 250
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBassEnhancerEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 252
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->BASS_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;ZI)V

    return-void
.end method

.method public final setDialogueEnhancerAmount(II)V
    .locals 3

    .line 287
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialogueEnhancerAmount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 289
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v1, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;ZI)V

    .line 290
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->DIALOGUE_ENHANCER_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;II)V

    return-void
.end method

.method public final setDsOn(Z)V
    .locals 3

    .line 74
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDsOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 76
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {v0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDsOn(Z)V

    .line 77
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setRegisterCallbacks(Z)V

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->setCurrentProfile()V

    :cond_0
    return-void
.end method

.method public final setHeadphoneVirtEnabled(ZI)V
    .locals 3

    .line 228
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeadphoneVirtEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 230
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->HEADPHONE_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;ZI)V

    return-void
.end method

.method public final setIeqPreset(II)V
    .locals 3

    .line 299
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIeqPreset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 301
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->IEQ_PRESET:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;II)V

    return-void
.end method

.method public final setPreset(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 204
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Ljava/lang/String;

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object p1

    .line 207
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->GEQ_BAND_GAINS:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;[II)V

    return-void
.end method

.method public final setProfile(I)V
    .locals 3

    .line 88
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 90
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    invoke-virtual {p0, p1}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setProfile(I)V

    return-void
.end method

.method public final setSpeakerVirtEnabled(ZI)V
    .locals 3

    .line 239
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeakerVirtEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 241
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->SPEAKER_VIRTUALIZER:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;ZI)V

    return-void
.end method

.method public final setStereoWideningAmount(II)V
    .locals 3

    .line 272
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStereoWideningAmount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 274
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->STEREO_WIDENING_AMOUNT:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;II)V

    return-void
.end method

.method public final setVolumeLevelerEnabled(ZI)V
    .locals 3

    .line 261
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeLevelerEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->checkEffect()V

    .line 263
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController;->dolbyEffect:Lco/aospa/dolby/xiaomi/DolbyAudioEffect;

    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;->VOLUME_LEVELER_ENABLE:Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;

    invoke-virtual {p0, v0, p1, p2}, Lco/aospa/dolby/xiaomi/DolbyAudioEffect;->setDapParameter(Lco/aospa/dolby/xiaomi/DolbyConstants$DsParam;ZI)V

    return-void
.end method
