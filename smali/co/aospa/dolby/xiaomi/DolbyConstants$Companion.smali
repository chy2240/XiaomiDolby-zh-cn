.class public final Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;
.super Ljava/lang/Object;
.source "DolbyConstants.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lco/aospa/dolby/xiaomi/DolbyConstants$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final dlog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string p0, "XiaomiDolby"

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 56
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final getPROFILE_SPECIFIC_PREFS()Ljava/util/Set;
    .locals 0

    .line 43
    invoke-static {}, Lco/aospa/dolby/xiaomi/DolbyConstants;->access$getPROFILE_SPECIFIC_PREFS$cp()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
