.class public final Landroidx/compose/foundation/gestures/DraggableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Draggable.kt"


# static fields
.field private static final CanDrag:Lkotlin/jvm/functions/Function1;

.field public static final Companion:Landroidx/compose/foundation/gestures/DraggableElement$Companion;


# instance fields
.field private final enabled:Z

.field private final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final onDragStarted:Lkotlin/jvm/functions/Function3;

.field private final onDragStopped:Lkotlin/jvm/functions/Function3;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final reverseDirection:Z

.field private final startDragImmediately:Z

.field private final state:Landroidx/compose/foundation/gestures/DraggableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/DraggableElement$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/DraggableElement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/gestures/DraggableElement;->Companion:Landroidx/compose/foundation/gestures/DraggableElement$Companion;

    .line 277
    sget-object v0, Landroidx/compose/foundation/gestures/DraggableElement$Companion$CanDrag$1;->INSTANCE:Landroidx/compose/foundation/gestures/DraggableElement$Companion$CanDrag$1;

    sput-object v0, Landroidx/compose/foundation/gestures/DraggableElement;->CanDrag:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V
    .locals 0

    .line 205
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 197
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 198
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 199
    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    .line 200
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 201
    iput-boolean p5, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Z

    .line 202
    iput-object p6, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 203
    iput-object p7, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 204
    iput-boolean p8, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/gestures/DraggableNode;
    .locals 11

    .line 207
    new-instance v10, Landroidx/compose/foundation/gestures/DraggableNode;

    .line 208
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 209
    sget-object v2, Landroidx/compose/foundation/gestures/DraggableElement;->CanDrag:Lkotlin/jvm/functions/Function1;

    .line 210
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 211
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    .line 212
    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 213
    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Z

    .line 214
    iget-object v7, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 215
    iget-object v8, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 216
    iget-boolean v9, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    move-object v0, v10

    .line 207
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/gestures/DraggableNode;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    return-object v10
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 196
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DraggableElement;->create()Landroidx/compose/foundation/gestures/DraggableNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 236
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/foundation/gestures/DraggableElement;

    if-eq v3, v2, :cond_2

    return v1

    .line 238
    :cond_2
    check-cast p1, Landroidx/compose/foundation/gestures/DraggableElement;

    .line 240
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 241
    :cond_3
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v2, v3, :cond_4

    return v1

    .line 242
    :cond_4
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 243
    :cond_5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 244
    :cond_6
    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 245
    :cond_7
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 246
    :cond_8
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 247
    :cond_9
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    if-eq p0, p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 253
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 254
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 255
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 256
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 258
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public update(Landroidx/compose/foundation/gestures/DraggableNode;)V
    .locals 10

    .line 221
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 222
    sget-object v2, Landroidx/compose/foundation/gestures/DraggableElement;->CanDrag:Lkotlin/jvm/functions/Function1;

    .line 223
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 224
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/DraggableElement;->enabled:Z

    .line 225
    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 226
    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/DraggableElement;->startDragImmediately:Z

    .line 227
    iget-object v7, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 228
    iget-object v8, p0, Landroidx/compose/foundation/gestures/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 229
    iget-boolean v9, p0, Landroidx/compose/foundation/gestures/DraggableElement;->reverseDirection:Z

    move-object v0, p1

    .line 220
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/foundation/gestures/DraggableNode;->update(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 196
    check-cast p1, Landroidx/compose/foundation/gestures/DraggableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableElement;->update(Landroidx/compose/foundation/gestures/DraggableNode;)V

    return-void
.end method
