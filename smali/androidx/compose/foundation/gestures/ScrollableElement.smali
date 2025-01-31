.class final Landroidx/compose/foundation/gestures/ScrollableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Scrollable.kt"


# instance fields
.field private final bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field private final enabled:Z

.field private final flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field private final interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field private final reverseDirection:Z

.field private final state:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 186
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 187
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 188
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 189
    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    .line 190
    iput-boolean p5, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    .line 191
    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 192
    iput-object p7, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 193
    iput-object p8, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/gestures/ScrollableNode;
    .locals 10

    .line 196
    new-instance v9, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 197
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 198
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 199
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 200
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 201
    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    .line 202
    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    .line 203
    iget-object v7, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 204
    iget-object v8, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-object v0, v9

    .line 196
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableNode;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    return-object v9
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 185
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableElement;->create()Landroidx/compose/foundation/gestures/ScrollableNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 236
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/gestures/ScrollableElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 238
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableElement;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 239
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v1, v3, :cond_3

    return v2

    .line 240
    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 241
    :cond_4
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 242
    :cond_5
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 243
    :cond_6
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 244
    :cond_7
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v3, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 245
    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iget-object p1, p1, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 222
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 227
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 228
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public update(Landroidx/compose/foundation/gestures/ScrollableNode;)V
    .locals 9

    .line 210
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->state:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 211
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 212
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    .line 213
    iget-boolean v4, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->enabled:Z

    .line 214
    iget-boolean v5, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->reverseDirection:Z

    .line 215
    iget-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 216
    iget-object v7, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 217
    iget-object v8, p0, Landroidx/compose/foundation/gestures/ScrollableElement;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-object v0, p1

    .line 209
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->update(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 185
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableElement;->update(Landroidx/compose/foundation/gestures/ScrollableNode;)V

    return-void
.end method
