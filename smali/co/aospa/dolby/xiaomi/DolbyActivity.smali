.class public final Lco/aospa/dolby/xiaomi/DolbyActivity;
.super Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;
.source "DolbyActivity.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 20
    new-instance p1, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-direct {p1}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;-><init>()V

    const-string v0, "DolbyActivity"

    const v1, 0x7f0a00be

    invoke-virtual {p0, v1, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
