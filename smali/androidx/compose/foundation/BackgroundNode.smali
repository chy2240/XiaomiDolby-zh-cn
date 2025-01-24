.class final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Background.kt"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field private alpha:F

.field private brush:Landroidx/compose/ui/graphics/Brush;

.field private color:J

.field private lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private lastOutline:Landroidx/compose/ui/graphics/Outline;

.field private lastShape:Landroidx/compose/ui/graphics/Shape;

.field private lastSize:J

.field private shape:Landroidx/compose/ui/graphics/Shape;

.field private tmpOutline:Landroidx/compose/ui/graphics/Outline;


# direct methods
.method private constructor <init>(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 135
    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 136
    iput-object p3, p0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 137
    iput p4, p0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    .line 138
    iput-object p5, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 143
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/BackgroundNode;-><init>(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;)V

    return-void
.end method

.method public static final synthetic access$setTmpOutline$p(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/Outline;)V
    .locals 0

    .line 134
    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Outline;

    return-void
.end method

.method private final drawOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 11

    .line 176
    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->getOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v10

    .line 177
    iget-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, v10

    invoke-static/range {v0 .. v9}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 178
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    if-eqz v2, :cond_1

    iget v3, p0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v10

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-hn5TExg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final drawRect(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 27

    move-object/from16 v0, p0

    .line 171
    iget-wide v1, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v3, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    const/16 v13, 0x7e

    const/4 v14, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    if-eqz v1, :cond_1

    iget v0, v0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    const/16 v25, 0x76

    const/16 v26, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    move/from16 v21, v0

    invoke-static/range {v15 .. v26}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final getOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Landroidx/compose/ui/graphics/Outline;
    .locals 4

    .line 183
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Landroidx/compose/foundation/BackgroundNode$getOutline$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/BackgroundNode$getOutline$1;-><init>(Landroidx/compose/foundation/BackgroundNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 189
    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Outline;

    const/4 v1, 0x0

    .line 190
    iput-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->tmpOutline:Landroidx/compose/ui/graphics/Outline;

    .line 192
    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 193
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    .line 194
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 195
    iget-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 2

    .line 150
    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->drawRect(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->drawOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 156
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    return-void
.end method

.method public final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    .line 138
    iget-object p0, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public onObservedReadsChanged()V
    .locals 2

    .line 161
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:J

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 163
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 164
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    .line 167
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    .line 137
    iput p1, p0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    return-void
.end method

.method public final setBrush(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    return-void
.end method

.method public final setShape(Landroidx/compose/ui/graphics/Shape;)V
    .locals 0

    .line 138
    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method
