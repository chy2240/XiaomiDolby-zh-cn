.class final Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$profileSharedPrefs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EqualizerRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;


# direct methods
.method constructor <init>(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$profileSharedPrefs$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 32
    iget-object v0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$profileSharedPrefs$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {v0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getContext$p(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)Landroid/content/Context;

    move-result-object v0

    .line 33
    iget-object p0, p0, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$profileSharedPrefs$2;->this$0:Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;

    invoke-static {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;->access$getProfile$p(Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lco/aospa/dolby/xiaomi/geq/data/EqualizerRepository$profileSharedPrefs$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
