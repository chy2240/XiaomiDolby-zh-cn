.class public abstract Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;
.super Ljava/lang/Object;
.source "IconButton.kt"


# static fields
.field public static final Companion:Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;

.field private static final Narrow:I

.field private static final Uniform:I

.field private static final Wide:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Companion:Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;

    const/4 v0, 0x0

    .line 1979
    invoke-static {v0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Narrow:I

    const/4 v0, 0x1

    .line 1984
    invoke-static {v0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Uniform:I

    const/4 v0, 0x2

    .line 1989
    invoke-static {v0}, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Wide:I

    return-void
.end method

.method public static final synthetic access$getNarrow$cp()I
    .locals 1

    .line 1972
    sget v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Narrow:I

    return v0
.end method

.method public static final synthetic access$getUniform$cp()I
    .locals 1

    .line 1972
    sget v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Uniform:I

    return v0
.end method

.method public static final synthetic access$getWide$cp()I
    .locals 1

    .line 1972
    sget v0, Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;->Wide:I

    return v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    .line 0
    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 0
    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
