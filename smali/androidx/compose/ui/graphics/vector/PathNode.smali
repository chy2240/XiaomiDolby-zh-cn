.class public abstract Landroidx/compose/ui/graphics/vector/PathNode;
.super Ljava/lang/Object;
.source "PathNode.kt"


# instance fields
.field private final isCurve:Z

.field private final isQuad:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve:Z

    iput-boolean p2, p0, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    const/4 p3, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/vector/PathNode;-><init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/PathNode;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public final isCurve()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve:Z

    return p0
.end method

.method public final isQuad()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad:Z

    return p0
.end method
