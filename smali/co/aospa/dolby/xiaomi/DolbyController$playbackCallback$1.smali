.class public final Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "DolbyController.kt"


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/DolbyController;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/DolbyController;)V
    .locals 0

    iput-object p1, p0, Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;->this$0:Lco/aospa/dolby/xiaomi/DolbyController;

    .line 30
    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 3

    const-string v0, "configs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1747
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 33
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 35
    :cond_2
    :goto_0
    sget-object p1, Lco/aospa/dolby/xiaomi/DolbyConstants;->Companion:Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackConfigChanged: isPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    invoke-virtual {p1, v2, v1}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;->dlog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 37
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/DolbyController$playbackCallback$1;->this$0:Lco/aospa/dolby/xiaomi/DolbyController;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/DolbyController;->access$setCurrentProfile(Lco/aospa/dolby/xiaomi/DolbyController;)V

    :cond_3
    return-void
.end method
