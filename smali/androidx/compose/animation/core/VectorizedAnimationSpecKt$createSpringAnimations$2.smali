.class public final Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;
.super Ljava/lang/Object;
.source "VectorizedAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/Animations;


# instance fields
.field private final anim:Landroidx/compose/animation/core/FloatSpringSpec;


# direct methods
.method constructor <init>(FF)V
    .locals 7

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 894
    new-instance v6, Landroidx/compose/animation/core/FloatSpringSpec;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;->anim:Landroidx/compose/animation/core/FloatSpringSpec;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    .line 893
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;->get(I)Landroidx/compose/animation/core/FloatSpringSpec;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Landroidx/compose/animation/core/FloatSpringSpec;
    .locals 0

    .line 896
    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;->anim:Landroidx/compose/animation/core/FloatSpringSpec;

    return-object p0
.end method
