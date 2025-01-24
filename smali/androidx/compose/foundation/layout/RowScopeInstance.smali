.class public final Landroidx/compose/foundation/layout/RowScopeInstance;
.super Ljava/lang/Object;
.source "Row.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/RowScope;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/RowScopeInstance;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;
    .locals 4

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 384
    const-string p0, "invalid weight; must be greater than zero"

    .line 94
    invoke-static {p0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 386
    :cond_1
    new-instance p0, Landroidx/compose/foundation/layout/LayoutWeightElement;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 388
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p2

    .line 386
    invoke-direct {p0, p2, p3}, Landroidx/compose/foundation/layout/LayoutWeightElement;-><init>(FZ)V

    .line 385
    invoke-interface {p1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
