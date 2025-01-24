.class public final Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;
.super Landroidx/window/embedding/DividerAttributes;
.source "DividerAttributes.kt"


# instance fields
.field private final dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

.field private final isDraggingToFullscreenAllowed:Z


# direct methods
.method private constructor <init>(IILandroidx/window/embedding/DividerAttributes$DragRange;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, v0}, Landroidx/window/embedding/DividerAttributes;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    iput-object p3, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 148
    iput-boolean p4, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/window/embedding/DividerAttributes$DragRange;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;-><init>(IILandroidx/window/embedding/DividerAttributes$DragRange;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 153
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 154
    :cond_1
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v1

    check-cast p1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 155
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result v1

    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 156
    iget-object v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    iget-object v3, p1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-boolean p0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    iget-boolean p1, p1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 162
    iget-boolean p0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "{width="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", color="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", primaryContainerDragRange="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->dragRange:Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", isDraggingToFullscreenAllowed="

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-boolean p0, p0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;->isDraggingToFullscreenAllowed:Z

    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
