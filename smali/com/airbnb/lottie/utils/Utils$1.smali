.class Lcom/airbnb/lottie/utils/Utils$1;
.super Ljava/lang/ThreadLocal;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/PathMeasure;
    .locals 0

    .line 43
    new-instance p0, Landroid/graphics/PathMeasure;

    invoke-direct {p0}, Landroid/graphics/PathMeasure;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/lottie/utils/Utils$1;->initialValue()Landroid/graphics/PathMeasure;

    move-result-object p0

    return-object p0
.end method
