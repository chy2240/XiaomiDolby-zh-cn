.class public abstract Landroidx/compose/ui/graphics/StrokeJoin;
.super Ljava/lang/Object;
.source "StrokeJoin.kt"


# static fields
.field private static final Bevel:I

.field public static final Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

.field private static final Miter:I

.field private static final Round:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Landroidx/compose/ui/graphics/StrokeJoin;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/StrokeJoin;->Miter:I

    const/4 v0, 0x1

    .line 35
    invoke-static {v0}, Landroidx/compose/ui/graphics/StrokeJoin;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    const/4 v0, 0x2

    .line 41
    invoke-static {v0}, Landroidx/compose/ui/graphics/StrokeJoin;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    return-void
.end method

.method public static final synthetic access$getBevel$cp()I
    .locals 1

    .line 27
    sget v0, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    return v0
.end method

.method public static final synthetic access$getMiter$cp()I
    .locals 1

    .line 27
    sget v0, Landroidx/compose/ui/graphics/StrokeJoin;->Miter:I

    return v0
.end method

.method public static final synthetic access$getRound$cp()I
    .locals 1

    .line 27
    sget v0, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

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

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    .line 46
    sget v0, Landroidx/compose/ui/graphics/StrokeJoin;->Miter:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Miter"

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Round"

    goto :goto_0

    .line 48
    :cond_1
    sget v0, Landroidx/compose/ui/graphics/StrokeJoin;->Bevel:I

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Bevel"

    goto :goto_0

    .line 49
    :cond_2
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method
