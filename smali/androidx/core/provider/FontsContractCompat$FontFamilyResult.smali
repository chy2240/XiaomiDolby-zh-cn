.class public Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# instance fields
.field private final mFonts:Ljava/util/List;

.field private final mStatusCode:I


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 516
    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 511
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-void
.end method

.method static create(ILjava/util/List;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 1

    .line 555
    new-instance v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method static create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 1

    .line 549
    new-instance v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    invoke-direct {v0, p0, p1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    return-object v0
.end method


# virtual methods
.method public getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 1

    .line 530
    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object p0
.end method

.method public getFontsWithFallbacks()Ljava/util/List;
    .locals 0

    .line 542
    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 520
    iget p0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    return p0
.end method

.method hasFallback()Z
    .locals 1

    .line 534
    iget-object p0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
