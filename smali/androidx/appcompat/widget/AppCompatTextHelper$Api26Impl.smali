.class abstract Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static sPaint:Landroid/graphics/Paint;

.field private static final sVariationsCache:Landroidx/collection/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 782
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->sVariationsCache:Landroidx/collection/LruCache;

    return-void
.end method

.method static createVariationInstance(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    .line 829
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 831
    sget-object v1, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->sVariationsCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    return-object v2

    .line 835
    :cond_0
    sget-object v2, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->sPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    sput-object v2, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->sPaint:Landroid/graphics/Paint;

    .line 838
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 839
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 843
    :cond_2
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 844
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setFontVariationSettings(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 846
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    .line 847
    invoke-virtual {v1, v0, p0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_3
    return-object v4
.end method

.method static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 0

    .line 855
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result p0

    return p0
.end method

.method static getFontVariationSettings(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 0

    .line 795
    invoke-virtual {p0}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 0

    .line 861
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 0

    .line 867
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method static setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z
    .locals 1

    .line 799
    invoke-virtual {p0}, Landroid/widget/TextView;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 803
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
