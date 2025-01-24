.class public abstract Landroidx/compose/ui/platform/AndroidComposeView_androidKt;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# static fields
.field private static platformTextInputServiceInterceptor:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 219
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView_androidKt$platformTextInputServiceInterceptor$1;

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->platformTextInputServiceInterceptor:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$containsDescendant(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->containsDescendant(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$preTranslate-cG2Xzmc([FFF[F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->preTranslate-cG2Xzmc([FFF[F)V

    return-void
.end method

.method private static final containsDescendant(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 2794
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2795
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2798
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static final dot-p89u6pk([FI[FI)F
    .locals 3

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    .line 47
    aget v1, p0, p1

    aget v2, p2, p3

    mul-float/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    .line 47
    aget v2, p0, v2

    add-int/2addr v0, p3

    aget v0, p2, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    add-int/lit8 v0, p1, 0x2

    .line 47
    aget v0, p0, v0

    const/16 v2, 0x8

    add-int/2addr v2, p3

    aget v2, p2, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    add-int/lit8 p1, p1, 0x3

    .line 47
    aget p0, p0, p1

    const/16 p1, 0xc

    add-int/2addr p1, p3

    aget p1, p2, p1

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method private static final getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;
    .locals 1

    const/4 v0, 0x1

    .line 2804
    invoke-static {p0, v0}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims;->setImportantForContentCapture(Landroid/view/View;I)V

    .line 2808
    invoke-static {p0}, Landroidx/compose/ui/platform/coreshims/ViewCompatShims;->getContentCaptureSession(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    move-result-object p0

    return-object p0
.end method

.method public static final getPlatformTextInputServiceInterceptor()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 217
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->platformTextInputServiceInterceptor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private static final preTransform-JiSxe2E([F[F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2632
    invoke-static {v1, v2, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v3

    const/4 v4, 0x1

    .line 2633
    invoke-static {v1, v2, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v5

    const/4 v6, 0x2

    .line 2634
    invoke-static {v1, v2, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v7

    const/4 v8, 0x3

    .line 2635
    invoke-static {v1, v2, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v9

    .line 2636
    invoke-static {v1, v4, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v10

    .line 2637
    invoke-static {v1, v4, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v11

    .line 2638
    invoke-static {v1, v4, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v12

    .line 2639
    invoke-static {v1, v4, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v13

    .line 2640
    invoke-static {v1, v6, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v14

    .line 2641
    invoke-static {v1, v6, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v15

    .line 2642
    invoke-static {v1, v6, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v16

    .line 2643
    invoke-static {v1, v6, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v17

    .line 2644
    invoke-static {v1, v8, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v18

    .line 2645
    invoke-static {v1, v8, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v19

    .line 2646
    invoke-static {v1, v8, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v20

    .line 2647
    invoke-static {v1, v8, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v1

    .line 50
    aput v3, v0, v2

    .line 50
    aput v5, v0, v4

    .line 50
    aput v7, v0, v6

    .line 50
    aput v9, v0, v8

    const/4 v2, 0x4

    .line 50
    aput v10, v0, v2

    const/4 v2, 0x5

    .line 50
    aput v11, v0, v2

    const/4 v2, 0x6

    .line 50
    aput v12, v0, v2

    const/4 v2, 0x7

    .line 50
    aput v13, v0, v2

    const/16 v2, 0x8

    .line 50
    aput v14, v0, v2

    const/16 v2, 0x9

    .line 50
    aput v15, v0, v2

    const/16 v2, 0xa

    .line 50
    aput v16, v0, v2

    const/16 v2, 0xb

    .line 50
    aput v17, v0, v2

    const/16 v2, 0xc

    .line 50
    aput v18, v0, v2

    const/16 v2, 0xd

    .line 50
    aput v19, v0, v2

    const/16 v2, 0xe

    .line 50
    aput v20, v0, v2

    const/16 v2, 0xf

    .line 50
    aput v1, v0, v2

    return-void
.end method

.method private static final preTranslate-cG2Xzmc([FFF[F)V
    .locals 6

    .line 2668
    invoke-static {p3}, Landroidx/compose/ui/graphics/Matrix;->reset-impl([F)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p3

    move v1, p1

    move v2, p2

    .line 2669
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/Matrix;->translate-impl$default([FFFFILjava/lang/Object;)V

    .line 2670
    invoke-static {p0, p3}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->preTransform-JiSxe2E([F[F)V

    return-void
.end method
