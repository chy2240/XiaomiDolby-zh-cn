.class public abstract Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;
.super Ljava/lang/Object;
.source "NestedScrollModifier.kt"


# static fields
.field public static final Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

.field private static final Drag:I

.field private static final Fling:I

.field private static final Relocate:I

.field private static final SideEffect:I

.field private static final UserInput:I

.field private static final Wheel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    const/4 v0, 0x1

    .line 230
    invoke-static {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->UserInput:I

    const/4 v1, 0x2

    .line 236
    invoke-static {v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->SideEffect:I

    .line 248
    sput v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Drag:I

    .line 260
    sput v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Fling:I

    const/4 v1, 0x3

    .line 265
    invoke-static {v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Relocate:I

    .line 277
    sput v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Wheel:I

    return-void
.end method

.method public static final synthetic access$getSideEffect$cp()I
    .locals 1

    .line 212
    sget v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->SideEffect:I

    return v0
.end method

.method public static final synthetic access$getUserInput$cp()I
    .locals 1

    .line 212
    sget v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->UserInput:I

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
