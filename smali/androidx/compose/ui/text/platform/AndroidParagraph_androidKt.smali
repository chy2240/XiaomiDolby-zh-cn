.class public abstract Landroidx/compose/ui/text/platform/AndroidParagraph_androidKt;
.super Ljava/lang/Object;
.source "ActualParagraph.android.kt"


# direct methods
.method public static final ActualParagraph-4FmOz70(Landroidx/compose/ui/text/ParagraphIntrinsics;IIJ)Landroidx/compose/ui/text/Paragraph;
    .locals 8

    .line 101
    new-instance v7, Landroidx/compose/ui/text/AndroidParagraph;

    .line 102
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.text.platform.AndroidParagraphIntrinsics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 101
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final ActualParagraph-XGqx6AY(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;IIJLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/ui/text/Paragraph;
    .locals 9

    .line 81
    new-instance v7, Landroidx/compose/ui/text/AndroidParagraph;

    .line 82
    new-instance v8, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v8

    move v2, p4

    move v3, p5

    move-wide v4, p6

    .line 81
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/AndroidParagraph;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method
