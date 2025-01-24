.class public abstract Landroidx/compose/ui/graphics/FilterQuality;
.super Ljava/lang/Object;
.source "FilterQuality.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

.field private static final High:I

.field private static final Low:I

.field private static final Medium:I

.field private static final None:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/FilterQuality$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/FilterQuality$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->None:I

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->Low:I

    const/4 v0, 0x2

    .line 45
    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->Medium:I

    const/4 v0, 0x3

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/graphics/FilterQuality;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/FilterQuality;->High:I

    return-void
.end method

.method public static final synthetic access$getLow$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->Low:I

    return v0
.end method

.method public static final synthetic access$getNone$cp()I
    .locals 1

    .line 22
    sget v0, Landroidx/compose/ui/graphics/FilterQuality;->None:I

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
