.class public abstract Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;
.super Ljava/lang/Object;
.source "BeyondBoundsLayout.kt"


# static fields
.field private static final Above:I

.field private static final After:I

.field private static final Before:I

.field private static final Below:I

.field public static final Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

.field private static final Left:I

.field private static final Right:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    const/4 v0, 0x2

    .line 81
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    const/4 v0, 0x3

    .line 86
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    const/4 v0, 0x4

    .line 91
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

    const/4 v0, 0x5

    .line 96
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    const/4 v0, 0x6

    .line 101
    invoke-static {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    return-void
.end method

.method public static final synthetic access$getAbove$cp()I
    .locals 1

    .line 69
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Above:I

    return v0
.end method

.method public static final synthetic access$getAfter$cp()I
    .locals 1

    .line 69
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->After:I

    return v0
.end method

.method public static final synthetic access$getBefore$cp()I
    .locals 1

    .line 69
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Before:I

    return v0
.end method

.method public static final synthetic access$getBelow$cp()I
    .locals 1

    .line 69
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Below:I

    return v0
.end method

.method public static final synthetic access$getLeft$cp()I
    .locals 1

    .line 69
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Left:I

    return v0
.end method

.method public static final synthetic access$getRight$cp()I
    .locals 1

    .line 69
    sget v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Right:I

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
