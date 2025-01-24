.class public abstract Landroidx/core/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# direct methods
.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, p2, v0}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 0

    .line 102
    invoke-static {p2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroidx/core/provider/FontProvider;->getFontFamilyResult(Landroid/content/Context;Ljava/util/List;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object p0

    return-object p0
.end method

.method public static requestFont(Landroid/content/Context;Ljava/util/List;IZILandroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)Landroid/graphics/Typeface;
    .locals 1

    .line 242
    new-instance v0, Landroidx/core/provider/CallbackWrapper;

    .line 243
    invoke-static {p5}, Landroidx/core/provider/RequestExecutor;->createHandlerExecutor(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p5

    invoke-direct {v0, p6, p5}, Landroidx/core/provider/CallbackWrapper;-><init>(Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Ljava/util/concurrent/Executor;)V

    if-eqz p3, :cond_1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p5, 0x1

    if-gt p3, p5, :cond_0

    const/4 p3, 0x0

    .line 251
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/provider/FontRequest;

    invoke-static {p0, p1, v0, p2, p4}, Landroidx/core/provider/FontRequestWorker;->requestFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/CallbackWrapper;II)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 247
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fallbacks with blocking fetches are not supported for performance reasons"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p3, 0x0

    .line 254
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/provider/FontRequestWorker;->requestFontAsync(Landroid/content/Context;Ljava/util/List;ILjava/util/concurrent/Executor;Landroidx/core/provider/CallbackWrapper;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
