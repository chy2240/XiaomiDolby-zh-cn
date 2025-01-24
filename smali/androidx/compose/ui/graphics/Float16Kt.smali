.class public abstract Landroidx/compose/ui/graphics/Float16Kt;
.super Ljava/lang/Object;
.source "Float16.kt"


# static fields
.field private static final Fp32DenormalFloat:F

.field private static final NegativeOne:S

.field private static final One:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 494
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16Kt;->One:S

    const/high16 v0, -0x40800000    # -1.0f

    .line 495
    invoke-static {v0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(F)S

    move-result v0

    sput-short v0, Landroidx/compose/ui/graphics/Float16Kt;->NegativeOne:S

    const/high16 v0, 0x3f000000    # 0.5f

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 514
    sput v0, Landroidx/compose/ui/graphics/Float16Kt;->Fp32DenormalFloat:F

    return-void
.end method

.method public static final synthetic access$getFp32DenormalFloat$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/graphics/Float16Kt;->Fp32DenormalFloat:F

    return v0
.end method
