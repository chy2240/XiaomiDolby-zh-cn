.class public final Landroidx/compose/material3/MotionSchemeKt$standardMotionScheme$1;
.super Ljava/lang/Object;
.source "MotionScheme.kt"

# interfaces
.implements Landroidx/compose/material3/MotionScheme;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 3

    .line 251
    sget-object p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringDefaultEffectsDamping()F

    move-result v0

    .line 252
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringDefaultEffectsStiffness()F

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 250
    invoke-static {v0, p0, v1, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public defaultSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 3

    .line 230
    sget-object p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringDefaultSpatialDamping()F

    move-result v0

    .line 231
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringDefaultSpatialStiffness()F

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 229
    invoke-static {v0, p0, v1, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public fastEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 3

    .line 258
    sget-object p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringFastEffectsDamping()F

    move-result v0

    .line 259
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringFastEffectsStiffness()F

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 257
    invoke-static {v0, p0, v1, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public fastSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 3

    .line 237
    sget-object p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringFastSpatialDamping()F

    move-result v0

    .line 238
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringFastSpatialStiffness()F

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 236
    invoke-static {v0, p0, v1, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public slowEffectsSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 3

    .line 265
    sget-object p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringSlowEffectsDamping()F

    move-result v0

    .line 266
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringSlowEffectsStiffness()F

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 264
    invoke-static {v0, p0, v1, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public slowSpatialSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 3

    .line 244
    sget-object p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringSlowSpatialDamping()F

    move-result v0

    .line 245
    invoke-virtual {p0}, Landroidx/compose/material3/tokens/StandardMotionTokens;->getSpringSlowSpatialStiffness()F

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 243
    invoke-static {v0, p0, v1, v2, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0
.end method
