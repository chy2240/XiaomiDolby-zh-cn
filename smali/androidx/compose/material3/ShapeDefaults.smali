.class public final Landroidx/compose/material3/ShapeDefaults;
.super Ljava/lang/Object;
.source "Shapes.kt"


# static fields
.field private static final CornerExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerFull:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerLarge:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerMedium:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerNone:Landroidx/compose/foundation/shape/CornerSize;

.field private static final CornerSmall:Landroidx/compose/foundation/shape/CornerSize;

.field private static final ExtraExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final ExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

.field public static final INSTANCE:Landroidx/compose/material3/ShapeDefaults;

.field private static final Large:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final LargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final Small:Landroidx/compose/foundation/shape/CornerBasedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/material3/ShapeDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ShapeDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->INSTANCE:Landroidx/compose/material3/ShapeDefaults;

    .line 264
    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 267
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->Small:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 270
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerMedium()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 273
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->Large:Landroidx/compose/foundation/shape/CornerBasedShape;

    const/16 v1, 0x14

    int-to-float v1, v1

    .line 391
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 279
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    sput-object v2, Landroidx/compose/material3/ShapeDefaults;->LargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 282
    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    const/16 v0, 0x20

    int-to-float v0, v0

    .line 392
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 288
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    sput-object v2, Landroidx/compose/material3/ShapeDefaults;->ExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    const/16 v2, 0x30

    int-to-float v2, v2

    .line 393
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 294
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/ShapeDefaults;->ExtraExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    const/4 v3, 0x0

    int-to-float v3, v3

    .line 394
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 297
    invoke-static {v3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/ShapeDefaults;->CornerNone:Landroidx/compose/foundation/shape/CornerSize;

    const/4 v3, 0x4

    int-to-float v3, v3

    .line 395
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 300
    invoke-static {v3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/ShapeDefaults;->CornerExtraSmall:Landroidx/compose/foundation/shape/CornerSize;

    const/16 v3, 0x8

    int-to-float v3, v3

    .line 396
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 303
    invoke-static {v3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/ShapeDefaults;->CornerSmall:Landroidx/compose/foundation/shape/CornerSize;

    const/16 v3, 0xc

    int-to-float v3, v3

    .line 397
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 306
    invoke-static {v3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/ShapeDefaults;->CornerMedium:Landroidx/compose/foundation/shape/CornerSize;

    const/16 v3, 0x10

    int-to-float v3, v3

    .line 398
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 309
    invoke-static {v3}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v3

    sput-object v3, Landroidx/compose/material3/ShapeDefaults;->CornerLarge:Landroidx/compose/foundation/shape/CornerSize;

    .line 399
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 312
    invoke-static {v1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    const/16 v1, 0x1c

    int-to-float v1, v1

    .line 400
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 315
    invoke-static {v1}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/ShapeDefaults;->CornerExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    .line 401
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 318
    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->CornerExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerSize;

    .line 402
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 321
    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize-0680j_4(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->CornerExtraExtraLarge:Landroidx/compose/foundation/shape/CornerSize;

    const/16 v0, 0x64

    .line 324
    invoke-static {v0}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->CornerFull:Landroidx/compose/foundation/shape/CornerSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCornerNone$material3_release()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    .line 297
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->CornerNone:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getExtraExtraLarge()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 294
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getExtraLarge()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 282
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getExtraLargeIncreased()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 288
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraLargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getExtraSmall()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 264
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 273
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Large:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getLargeIncreased()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 279
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->LargeIncreased:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 270
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    .line 267
    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Small:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method
