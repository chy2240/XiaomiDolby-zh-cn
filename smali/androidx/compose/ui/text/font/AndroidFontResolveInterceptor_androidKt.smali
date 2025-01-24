.class public abstract Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor_androidKt;
.super Ljava/lang/Object;
.source "AndroidFontResolveInterceptor.android.kt"


# direct methods
.method public static final AndroidFontResolveInterceptor(Landroid/content/Context;)Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;
    .locals 1

    .line 57
    sget-object v0, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;->INSTANCE:Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/font/FontWeightAdjustmentHelper;->getFontWeightAdjustment(Landroid/content/Context;)I

    move-result p0

    .line 58
    new-instance v0, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;-><init>(I)V

    return-object v0
.end method
