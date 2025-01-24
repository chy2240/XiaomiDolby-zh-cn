.class public final Landroidx/compose/ui/platform/OutlineResolver;
.super Ljava/lang/Object;
.source "OutlineResolver.android.kt"


# instance fields
.field private cacheIsDirty:Z

.field private final cachedOutline:Landroid/graphics/Outline;

.field private cachedRrectPath:Landroidx/compose/ui/graphics/Path;

.field private isSupportedOutline:Z

.field private outline:Landroidx/compose/ui/graphics/Outline;

.field private outlineNeeded:Z

.field private outlinePath:Landroidx/compose/ui/graphics/Path;

.field private rectSize:J

.field private rectTopLeft:J

.field private roundedCornerRadius:F

.field private tmpOpPath:Landroidx/compose/ui/graphics/Path;

.field private tmpPath:Landroidx/compose/ui/graphics/Path;

.field private tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

.field private tmpTouchPointPath:Landroidx/compose/ui/graphics/Path;

.field private usePathForClip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    .line 45
    new-instance v0, Landroid/graphics/Outline;

    invoke-direct {v0}, Landroid/graphics/Outline;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 122
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 128
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    return-void
.end method

.method private final isSameBounds-4L21HEs(Landroidx/compose/ui/geometry/RoundRect;JJF)Z
    .locals 7

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 303
    invoke-static {p1}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v0

    const/16 v1, 0x20

    shr-long v2, p2, v1

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v0

    const-wide v3, 0xffffffffL

    and-long/2addr p2, v3

    long-to-int p2, p2

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    cmpg-float p3, v0, p3

    if-nez p3, :cond_1

    .line 308
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result p3

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    shr-long v5, p4, v1

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v0, v2

    cmpg-float p3, p3, v0

    if-nez p3, :cond_1

    .line 309
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result p3

    .line 22
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    and-long/2addr p4, v3

    long-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    add-float/2addr p2, p4

    cmpg-float p2, p3, p2

    if-nez p2, :cond_1

    .line 310
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide p1

    shr-long/2addr p1, v1

    long-to-int p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p1, p1, p6

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private final updateCache()V
    .locals 6

    .line 223
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    if-eqz v0, :cond_3

    .line 224
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 228
    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    .line 229
    iget-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Outline;

    if-eqz v1, :cond_2

    .line 231
    iget-boolean v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 231
    iget-wide v2, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    .line 238
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v0, :cond_0

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithRect(Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_0

    .line 239
    :cond_0
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v0, :cond_1

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    goto :goto_0

    .line 240
    :cond_1
    instance-of v0, v1, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v0, :cond_3

    check-cast v1, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V
    .locals 2

    .line 284
    sget-object v0, Landroidx/compose/ui/platform/OutlineVerificationHelper;->INSTANCE:Landroidx/compose/ui/platform/OutlineVerificationHelper;

    iget-object v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/platform/OutlineVerificationHelper;->setPath(Landroid/graphics/Outline;Landroidx/compose/ui/graphics/Path;)V

    .line 288
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {v0}, Landroid/graphics/Outline;->canClip()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    .line 294
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method private final updateCacheWithRect(Landroidx/compose/ui/geometry/Rect;)V
    .locals 7

    .line 249
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    .line 30
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    .line 249
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    sub-float/2addr v1, v2

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v2, v4

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    .line 250
    iput-wide v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 251
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 252
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 253
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 254
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 255
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 251
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method

.method private final updateCacheWithRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V
    .locals 10

    .line 260
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 261
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v3

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v4, v1

    .line 54
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v6, v1

    shl-long v3, v4, v2

    const-wide v8, 0xffffffffL

    and-long v5, v6, v8

    or-long/2addr v3, v5

    .line 30
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v3

    .line 261
    iput-wide v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    .line 262
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v3

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v4, v1

    .line 54
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v6, v1

    shl-long v1, v4, v2

    and-long v3, v6, v8

    or-long/2addr v1, v3

    .line 33
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v1

    .line 262
    iput-wide v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    .line 263
    invoke-static {p1}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v3, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    .line 265
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 266
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 267
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 268
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result p1

    .line 26
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    move v8, v0

    .line 264
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 271
    iput v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/Path;

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedRrectPath:Landroidx/compose/ui/graphics/Path;

    .line 274
    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->reset()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 275
    invoke-static {v0, p1, v2, v1, v2}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    .line 276
    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCacheWithPath(Landroidx/compose/ui/graphics/Path;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/OutlineResolver;->getClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {v8, v0, v9, v10, v11}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    goto/16 :goto_4

    .line 185
    :cond_0
    iget v6, v7, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    const-wide v12, 0xffffffffL

    const/16 v14, 0x20

    if-lez v0, :cond_4

    .line 186
    iget-object v15, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    .line 187
    iget-object v1, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    if-eqz v15, :cond_2

    .line 190
    iget-wide v2, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    iget-wide v4, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/platform/OutlineResolver;->isSameBounds-4L21HEs(Landroidx/compose/ui/geometry/RoundRect;JJF)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v9

    move v1, v10

    goto :goto_3

    .line 194
    :cond_2
    :goto_0
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v0, v14

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 195
    iget-wide v2, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v2, v12

    long-to-int v0, v2

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 196
    iget-wide v3, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v3, v14

    long-to-int v0, v3

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 196
    iget-wide v3, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    shr-long/2addr v3, v14

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v0

    .line 197
    iget-wide v4, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v4, v12

    long-to-int v0, v4

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 197
    iget-wide v4, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    and-long/2addr v4, v12

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float/2addr v4, v0

    .line 198
    iget v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->roundedCornerRadius:F

    .line 53
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    .line 54
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    shl-long/2addr v5, v14

    and-long/2addr v9, v12

    or-long/2addr v5, v9

    .line 33
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide v5

    .line 193
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-gG7oq9Y(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    if-nez v15, :cond_3

    .line 201
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v15

    :goto_1
    const/4 v1, 0x2

    goto :goto_2

    .line 203
    :cond_3
    invoke-interface {v15}, Landroidx/compose/ui/graphics/Path;->reset()V

    goto :goto_1

    .line 205
    :goto_2
    invoke-static {v15, v0, v11, v1, v11}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    .line 206
    iput-object v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpRoundRect:Landroidx/compose/ui/geometry/RoundRect;

    .line 207
    iput-object v15, v7, Landroidx/compose/ui/platform/OutlineResolver;->tmpPath:Landroidx/compose/ui/graphics/Path;

    const/4 v0, 0x0

    .line 209
    :goto_3
    invoke-static {v8, v15, v0, v1, v11}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;IILjava/lang/Object;)V

    goto :goto_4

    .line 213
    :cond_4
    iget-wide v0, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v0, v14

    long-to-int v0, v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 214
    iget-wide v2, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v2, v12

    long-to-int v0, v2

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 215
    iget-wide v3, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    shr-long/2addr v3, v14

    long-to-int v0, v3

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 215
    iget-wide v3, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    shr-long/2addr v3, v14

    long-to-int v3, v3

    .line 22
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v0

    .line 216
    iget-wide v4, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectTopLeft:J

    and-long/2addr v4, v12

    long-to-int v0, v4

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 216
    iget-wide v4, v7, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    and-long/2addr v4, v12

    long-to-int v4, v4

    .line 22
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float/2addr v4, v0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    .line 212
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg$default(Landroidx/compose/ui/graphics/Canvas;FFFFIILjava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public final getAndroidOutline()Landroid/graphics/Outline;
    .locals 1

    .line 92
    invoke-direct {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    .line 93
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->isSupportedOutline:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getCacheIsDirty$ui_release()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    return p0
.end method

.method public final getClipPath()Landroidx/compose/ui/graphics/Path;
    .locals 0

    .line 114
    invoke-direct {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    .line 115
    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-object p0
.end method

.method public final getOutlineClipSupported()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isInOutline-k-4lQ0M(J)Z
    .locals 4

    .line 161
    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Outline;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 166
    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpTouchPointPath:Landroidx/compose/ui/graphics/Path;

    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->tmpOpPath:Landroidx/compose/ui/graphics/Path;

    invoke-static {v0, v1, p1, p2, p0}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInOutline(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method public final update-S_szKao(Landroidx/compose/ui/graphics/Outline;FZFJ)Z
    .locals 2

    .line 144
    iget-object v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->cachedOutline:Landroid/graphics/Outline;

    invoke-virtual {v0, p2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 145
    iget-object p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Outline;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 147
    iput-object p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outline:Landroidx/compose/ui/graphics/Outline;

    .line 148
    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    .line 150
    :cond_0
    iput-wide p5, p0, Landroidx/compose/ui/platform/OutlineResolver;->rectSize:J

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 152
    :goto_0
    iget-boolean p2, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    if-eq p2, p1, :cond_3

    .line 153
    iput-boolean p1, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlineNeeded:Z

    .line 154
    iput-boolean v1, p0, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    :cond_3
    return v0
.end method
