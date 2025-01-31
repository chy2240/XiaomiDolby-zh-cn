.class public final Landroidx/core/view/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# instance fields
.field private final mDisplayCutout:Landroid/view/DisplayCutout;


# direct methods
.method private constructor <init>(Landroid/view/DisplayCutout;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method static wrap(Landroid/view/DisplayCutout;)Landroidx/core/view/DisplayCutoutCompat;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Landroidx/core/view/DisplayCutoutCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/core/view/DisplayCutoutCompat;

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    check-cast p1, Landroidx/core/view/DisplayCutoutCompat;

    .line 244
    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object p1, p1, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSafeInsetBottom()I
    .locals 0

    .line 157
    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method public getSafeInsetLeft()I
    .locals 0

    .line 166
    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetLeft(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method public getSafeInsetRight()I
    .locals 0

    .line 175
    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetRight(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method public getSafeInsetTop()I
    .locals 0

    .line 148
    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api28Impl;->getSafeInsetTop(Landroid/view/DisplayCutout;)I

    move-result p0

    return p0
.end method

.method public getWaterfallInsets()Landroidx/core/graphics/Insets;
    .locals 0

    .line 212
    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p0}, Landroidx/core/view/DisplayCutoutCompat$Api30Impl;->getWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutoutCompat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/core/view/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
