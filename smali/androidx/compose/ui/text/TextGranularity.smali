.class public abstract Landroidx/compose/ui/text/TextGranularity;
.super Ljava/lang/Object;
.source "TextGranularity.kt"


# static fields
.field private static final Character:I

.field public static final Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

.field private static final Word:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/TextGranularity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/TextGranularity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/TextGranularity;->Companion:Landroidx/compose/ui/text/TextGranularity$Companion;

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Landroidx/compose/ui/text/TextGranularity;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/TextGranularity;->Character:I

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/text/TextGranularity;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/TextGranularity;->Word:I

    return-void
.end method

.method public static final synthetic access$getCharacter$cp()I
    .locals 1

    .line 25
    sget v0, Landroidx/compose/ui/text/TextGranularity;->Character:I

    return v0
.end method

.method public static final synthetic access$getWord$cp()I
    .locals 1

    .line 25
    sget v0, Landroidx/compose/ui/text/TextGranularity;->Word:I

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
