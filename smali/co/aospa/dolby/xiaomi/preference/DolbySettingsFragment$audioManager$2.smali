.class final Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioManager$2;
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
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioManager$2;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/AudioManager;
    .locals 1

    .line 78
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioManager$2;->this$0:Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/preference/DolbySettingsFragment$audioManager$2;->invoke()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method
