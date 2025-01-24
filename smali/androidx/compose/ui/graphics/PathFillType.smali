.class public abstract Landroidx/compose/ui/graphics/PathFillType;
.super Ljava/lang/Object;
.source "PathFillType.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

.field private static final EvenOdd:I

.field private static final NonZero:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/PathFillType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/PathFillType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathFillType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathFillType;->NonZero:I

    const/4 v0, 0x1

    .line 50
    invoke-static {v0}, Landroidx/compose/ui/graphics/PathFillType;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    return-void
.end method

.method public static final synthetic access$getEvenOdd$cp()I
    .locals 1

    .line 26
    sget v0, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    return v0
.end method

.method public static final synthetic access$getNonZero$cp()I
    .locals 1

    .line 26
    sget v0, Landroidx/compose/ui/graphics/PathFillType;->NonZero:I

    return v0
.end method

.method public static constructor-impl(I)I
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

.method public static hashCode-impl(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method
