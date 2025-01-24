.class public final Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
.super Ljava/lang/Object;
.source "DividerAttributes.kt"


# instance fields
.field private color:I

.field private dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

.field private isDraggingToFullscreenAllowed:Z

.field private widthDp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 181
    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    const/high16 v0, -0x1000000

    .line 183
    iput v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    .line 185
    sget-object v0, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;

    iput-object v0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;
    .locals 7

    .line 271
    new-instance v6, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    .line 272
    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    .line 273
    iget v2, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    .line 274
    iget-object v3, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 275
    iget-boolean v4, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->isDraggingToFullscreenAllowed:Z

    const/4 v5, 0x0

    move-object v0, v6

    .line 271
    invoke-direct/range {v0 .. v5}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;-><init>(IILandroidx/window/embedding/DividerAttributes$DragRange;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final setColor(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 1

    .line 223
    sget-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    .line 224
    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->color:I

    return-object p0
.end method

.method public final setDragRange(Landroidx/window/embedding/DividerAttributes$DragRange;)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 1

    const-string v0, "dragRange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    return-object p0
.end method

.method public final setDraggingToFullscreenAllowed(Z)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 0

    .line 265
    iput-boolean p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->isDraggingToFullscreenAllowed:Z

    return-object p0
.end method

.method public final setWidthDp(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    .locals 1

    .line 212
    sget-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    invoke-static {v0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V

    .line 213
    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->widthDp:I

    return-object p0
.end method
