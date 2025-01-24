.class public final Landroidx/activity/result/ActivityResult$Companion;
.super Ljava/lang/Object;
.source "ActivityResult.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/activity/result/ActivityResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final resultCodeToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    if-eqz p1, :cond_0

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_0
    const-string p0, "RESULT_CANCELED"

    goto :goto_0

    .line 66
    :cond_1
    const-string p0, "RESULT_OK"

    :goto_0
    return-object p0
.end method
