.class public final Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;
.super Landroidx/preference/PreferenceFragment;
.source "DolbySettingsFragment.kt"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final $stable:I

.field private static final ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

.field public static final Companion:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$Companion;


# instance fields
.field private final audioDeviceCallback:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;

.field private final audioManager$delegate:Lkotlin/Lazy;

.field private final bassPref$delegate:Lkotlin/Lazy;

.field private final dialoguePref$delegate:Lkotlin/Lazy;

.field private final dolbyController$delegate:Lkotlin/Lazy;

.field private final handler:Landroid/os/Handler;

.field private final hpVirtPref$delegate:Lkotlin/Lazy;

.field private final ieqPref$delegate:Lkotlin/Lazy;

.field private isOnSpeaker:Z

.field private final presetPref$delegate:Lkotlin/Lazy;

.field private final profilePref$delegate:Lkotlin/Lazy;

.field private final resetPref$delegate:Lkotlin/Lazy;

.field private final spkVirtPref$delegate:Lkotlin/Lazy;

.field private final stereoPref$delegate:Lkotlin/Lazy;

.field private final switchBar$delegate:Lkotlin/Lazy;

.field private final volumePref$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->Companion:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->$stable:I

    .line 302
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 303
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$switchBar$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$switchBar$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->switchBar$delegate:Lkotlin/Lazy;

    .line 46
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$profilePref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$profilePref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->profilePref$delegate:Lkotlin/Lazy;

    .line 49
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$presetPref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$presetPref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->presetPref$delegate:Lkotlin/Lazy;

    .line 52
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$ieqPref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$ieqPref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->ieqPref$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$stereoPref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$stereoPref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->stereoPref$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$dialoguePref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$dialoguePref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->dialoguePref$delegate:Lkotlin/Lazy;

    .line 61
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$bassPref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$bassPref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->bassPref$delegate:Lkotlin/Lazy;

    .line 64
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$hpVirtPref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$hpVirtPref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->hpVirtPref$delegate:Lkotlin/Lazy;

    .line 67
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$spkVirtPref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$spkVirtPref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->spkVirtPref$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$volumePref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$volumePref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->volumePref$delegate:Lkotlin/Lazy;

    .line 73
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$resetPref$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$resetPref$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->resetPref$delegate:Lkotlin/Lazy;

    .line 77
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$dolbyController$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$dolbyController$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->dolbyController$delegate:Lkotlin/Lazy;

    .line 78
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioManager$2;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioManager$2;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->audioManager$delegate:Lkotlin/Lazy;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->isOnSpeaker:Z

    .line 89
    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;

    invoke-direct {v0, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    iput-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->audioDeviceCallback:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;

    return-void
.end method

.method public static final synthetic access$getDolbyController(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 0

    .line 40
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProfilePref(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)Landroidx/preference/ListPreference;
    .locals 0

    .line 40
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateProfileSpecificPrefs(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileSpecificPrefs()V

    return-void
.end method

.method public static final synthetic access$updateSpeakerState(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateSpeakerState()V

    return-void
.end method

.method private final getAudioManager()Landroid/media/AudioManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->audioManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method private final getBassPref()Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    .line 61
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->bassPref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method private final getDialoguePref()Landroidx/preference/ListPreference;
    .locals 0

    .line 58
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->dialoguePref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method

.method private final getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;
    .locals 0

    .line 77
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->dolbyController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/DolbyController;

    return-object p0
.end method

.method private final getHpVirtPref()Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    .line 64
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->hpVirtPref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method private final getIeqPref()Lco/aospa/dolby/xiaomi/preference/DolbyIeqPreference;
    .locals 0

    .line 52
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->ieqPref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/aospa/dolby/xiaomi/preference/DolbyIeqPreference;

    return-object p0
.end method

.method private final getPresetPref()Landroidx/preference/Preference;
    .locals 0

    .line 49
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->presetPref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    return-object p0
.end method

.method private final getProfilePref()Landroidx/preference/ListPreference;
    .locals 0

    .line 46
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->profilePref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method

.method private final getResetPref()Landroidx/preference/Preference;
    .locals 0

    .line 73
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->resetPref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    return-object p0
.end method

.method private final getSpkVirtPref()Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    .line 67
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->spkVirtPref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method private final getStereoPref()Landroidx/preference/ListPreference;
    .locals 0

    .line 55
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->stereoPref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method

.method private final getSwitchBar()Lcom/android/settingslib/widget/MainSwitchPreference;
    .locals 0

    .line 43
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->switchBar$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/widget/MainSwitchPreference;

    return-object p0
.end method

.method private final getVolumePref()Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    .line 70
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->volumePref$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method private final setOnSpeaker(Z)V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->isOnSpeaker:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 84
    :cond_0
    iput-boolean p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->isOnSpeaker:Z

    .line 85
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsOnSpeaker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DolbySettingsFragment"

    invoke-virtual {v0, v1, p1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileSpecificPrefs()V

    return-void
.end method

.method private final updateProfileIcon(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 296
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p0

    const p1, 0x7f0800ce

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p0

    const p1, 0x7f080120

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p0

    const p1, 0x7f080123

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p0

    const p1, 0x7f080122

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 292
    :cond_3
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p0

    const p1, 0x7f080121

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_0
    return-void
.end method

.method private final updateProfileSpecificPrefs()V
    .locals 8

    .line 218
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1101ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11017d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v1

    invoke-virtual {v1}, Lco/aospa/dolby/xiaomi/DolbyController;->getDsOn()Z

    move-result v1

    .line 221
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v3

    invoke-virtual {v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result v3

    .line 223
    sget-object v4, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    .line 225
    iget-boolean v5, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->isOnSpeaker:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateProfileSpecificPrefs: dsOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " currentProfile="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isOnSpeaker="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    const-string v6, "DolbySettingsFragment"

    invoke-virtual {v4, v6, v5}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    .line 229
    :goto_0
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getPresetPref()Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 230
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getSpkVirtPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 231
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getIeqPref()Lco/aospa/dolby/xiaomi/preference/DolbyIeqPreference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 232
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDialoguePref()Landroidx/preference/ListPreference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 233
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getVolumePref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 234
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getBassPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 235
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getResetPref()Landroidx/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 236
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getHpVirtPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v6

    if-eqz v1, :cond_1

    iget-boolean v7, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->isOnSpeaker:Z

    if-nez v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 237
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getStereoPref()Landroidx/preference/ListPreference;

    move-result-object v6

    if-eqz v1, :cond_2

    iget-boolean v7, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->isOnSpeaker:Z

    if-nez v7, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v1, :cond_3

    return-void

    .line 241
    :cond_3
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getPresetPref()Landroidx/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v4

    invoke-virtual {v4}, Lco/aospa/dolby/xiaomi/DolbyController;->getPresetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getIeqPreset(I)I

    move-result v1

    .line 244
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getIeqPref()Lco/aospa/dolby/xiaomi/preference/DolbyIeqPreference;

    move-result-object v4

    .line 245
    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, "getEntryValues(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "%s"

    if-eqz v5, :cond_4

    .line 246
    invoke-virtual {v4, v7}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 249
    :cond_4
    invoke-virtual {v4, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    :goto_2
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getDialogueEnhancerAmount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDialoguePref()Landroidx/preference/ListPreference;

    move-result-object v4

    .line 255
    invoke-virtual {v4}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 256
    invoke-virtual {v4, v7}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v4, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 259
    :cond_5
    invoke-virtual {v4, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    :goto_3
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getSpkVirtPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v1

    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getSpeakerVirtEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getVolumePref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v1

    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getVolumeLevelerEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 265
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getBassPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v1

    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getBassEnhancerEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 268
    iget-boolean v1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->isOnSpeaker:Z

    if-eqz v1, :cond_6

    .line 269
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getStereoPref()Landroidx/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getHpVirtPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 274
    :cond_6
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getStereoWideningAmount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getStereoPref()Landroidx/preference/ListPreference;

    move-result-object v2

    .line 276
    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 277
    invoke-virtual {v2, v7}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {v2, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 280
    :cond_7
    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    :goto_4
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getHpVirtPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 285
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lco/aospa/dolby/xiaomi/DolbyController;->getHeadphoneVirtEnabled(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x0

    .line 286
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateSpeakerState()V
    .locals 3

    .line 213
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->ATTRIBUTES_MEDIA:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    .line 214
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->setOnSpeaker(Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbySettingsFragment"

    invoke-virtual {p1, v1, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lco/aospa/dolby/xiaomi/DolbyController;->setDsOn(Z)V

    .line 208
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 209
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileSpecificPrefs()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 102
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string p2, "DolbySettingsFragment"

    const-string v0, "onCreatePreferences"

    invoke-virtual {p1, p2, v0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x7f140000

    .line 103
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 105
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p1

    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/DolbyController;->getProfile()I

    move-result p1

    .line 106
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    new-instance v0, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->setProfile(I)V

    .line 106
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 110
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p2

    invoke-virtual {p2}, Lco/aospa/dolby/xiaomi/DolbyController;->getDsOn()Z

    move-result p2

    .line 111
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getSwitchBar()Lcom/android/settingslib/widget/MainSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getSwitchBar()Lcom/android/settingslib/widget/MainSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    .line 114
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileIcon(I)V

    .line 116
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 117
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getProfilePref()Landroidx/preference/ListPreference;

    move-result-object p2

    .line 118
    invoke-virtual {p2}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "getEntryValues(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "%s"

    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1101ab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getHpVirtPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getSpkVirtPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getStereoPref()Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDialoguePref()Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getBassPref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getVolumePref()Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getIeqPref()Lco/aospa/dolby/xiaomi/preference/DolbyIeqPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getResetPref()Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;

    invoke-direct {p2, p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;-><init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->audioDeviceCallback:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;

    iget-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 146
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateSpeakerState()V

    .line 147
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileSpecificPrefs()V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 151
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    const-string v1, "DolbySettingsFragment"

    const-string v2, "onDestroyView"

    invoke-virtual {v0, v1, v2}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->audioDeviceCallback:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioDeviceCallback$1;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 153
    invoke-super {p0}, Landroidx/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange: key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbySettingsFragment"

    invoke-virtual {v0, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "dolby_profile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 165
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 166
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lco/aospa/dolby/xiaomi/DolbyController;->setProfile(I)V

    .line 167
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type co.aospa.dolby.xiaomi.preference.DolbyPreferenceStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;

    invoke-virtual {p2, p1}, Lco/aospa/dolby/xiaomi/preference/DolbyPreferenceStore;->setProfile(I)V

    .line 168
    invoke-direct {p0, p1}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileIcon(I)V

    .line 169
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileSpecificPrefs()V

    goto/16 :goto_0

    .line 163
    :sswitch_1
    const-string v1, "dolby_dialogue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 185
    :cond_1
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v0, v3, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setDialogueEnhancerAmount$default(Lco/aospa/dolby/xiaomi/DolbyController;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 163
    :sswitch_2
    const-string v1, "dolby_virtualizer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 177
    :cond_2
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1, v0, v3, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setHeadphoneVirtEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 163
    :sswitch_3
    const-string v1, "dolby_ieq"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 197
    :cond_3
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v0, v3, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setIeqPreset$default(Lco/aospa/dolby/xiaomi/DolbyController;IIILjava/lang/Object;)V

    goto :goto_0

    .line 163
    :sswitch_4
    const-string v1, "dolby_volume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 193
    :cond_4
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1, v0, v3, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setVolumeLevelerEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V

    goto :goto_0

    .line 163
    :sswitch_5
    const-string v1, "dolby_stereo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 181
    :cond_5
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v0, v3, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setStereoWideningAmount$default(Lco/aospa/dolby/xiaomi/DolbyController;IIILjava/lang/Object;)V

    goto :goto_0

    .line 163
    :sswitch_6
    const-string v1, "dolby_spk_virtualizer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 173
    :cond_6
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1, v0, v3, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setSpeakerVirtEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V

    goto :goto_0

    .line 163
    :sswitch_7
    const-string v1, "dolby_bass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 189
    :cond_7
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->getDolbyController()Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1, v0, v3, v2}, Lco/aospa/dolby/xiaomi/DolbyController;->setBassEnhancerEnabled$default(Lco/aospa/dolby/xiaomi/DolbyController;ZIILjava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x629eee9a -> :sswitch_7
        -0x4cb7dacf -> :sswitch_6
        -0x1895e341 -> :sswitch_5
        -0x13ba941f -> :sswitch_4
        -0xb706092 -> :sswitch_3
        0xbda92c2 -> :sswitch_2
        0x521c48df -> :sswitch_1
        0x64449dc2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 158
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->updateProfileSpecificPrefs()V

    return-void
.end method
