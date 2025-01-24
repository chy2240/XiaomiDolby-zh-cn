.class public abstract Landroidx/compose/ui/graphics/layer/CompositingStrategy;
.super Ljava/lang/Object;
.source "CompositingStrategy.kt"


# static fields
.field private static final Auto:I

.field public static final Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

.field private static final ModulateAlpha:I

.field private static final Offscreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Auto:I

    const/4 v0, 0x1

    .line 51
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Offscreen:I

    const/4 v0, 0x2

    .line 62
    invoke-static {v0}, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->ModulateAlpha:I

    return-void
.end method

.method public static final synthetic access$getAuto$cp()I
    .locals 1

    .line 25
    sget v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Auto:I

    return v0
.end method

.method public static final synthetic access$getModulateAlpha$cp()I
    .locals 1

    .line 25
    sget v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->ModulateAlpha:I

    return v0
.end method

.method public static final synthetic access$getOffscreen$cp()I
    .locals 1

    .line 25
    sget v0, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Offscreen:I

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
