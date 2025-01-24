.class final Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$switchBar$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DolbySettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$switchBar$2;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/settingslib/widget/MainSwitchPreference;
    .locals 1

    .line 44
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$switchBar$2;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    const-string v0, "dolby_enable"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/settingslib/widget/MainSwitchPreference;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$switchBar$2;->invoke()Lcom/android/settingslib/widget/MainSwitchPreference;

    move-result-object p0

    return-object p0
.end method
