.class Lcom/airbnb/lottie/utils/Utils$3;
.super Ljava/lang/ThreadLocal;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Path;
    .locals 0

    .line 57
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/Utils$3;->initialValue()Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
