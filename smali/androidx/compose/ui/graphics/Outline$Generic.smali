.class public final Landroidx/compose/ui/graphics/Outline$Generic;
.super Landroidx/compose/ui/graphics/Outline;
.source "Outline.kt"


# instance fields
.field private final path:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Outline;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public getBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 106
    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 104
    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    return-object p0
.end method
