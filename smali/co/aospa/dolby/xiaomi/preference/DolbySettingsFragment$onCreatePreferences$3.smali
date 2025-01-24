.class final Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;
.super Ljava/lang/Object;
.source "DolbySettingsFragment.kt"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->access$getDolbyController(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)Lco/aospa/dolby/xiaomi/DolbyController;

    move-result-object p1

    invoke-virtual {p1}, Lco/aospa/dolby/xiaomi/DolbyController;->resetProfileSpecificSettings()V

    .line 136
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-static {p1}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->access$updateProfileSpecificPrefs(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)V

    .line 138
    iget-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$onCreatePreferences$3;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;->access$getProfilePref(Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;)Landroidx/preference/ListPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f1101a7

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 137
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method
