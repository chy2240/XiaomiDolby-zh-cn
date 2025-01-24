.class final Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 14

    .line 279
    const-string p0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 280
    new-instance p0, Landroidx/compose/ui/text/ParagraphStyle;

    const/4 v0, 0x0

    .line 281
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    check-cast v0, Landroidx/compose/ui/text/style/TextAlign;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result v2

    const/4 v0, 0x1

    .line 282
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    check-cast v0, Landroidx/compose/ui/text/style/TextDirection;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection;->unbox-impl()I

    move-result v3

    const/4 v0, 0x2

    .line 283
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .line 65
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v6, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v4, v0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/TextUnit;

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit;->unbox-impl()J

    move-result-wide v6

    const/4 v0, 0x3

    .line 284
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/TextIndent$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .line 65
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    instance-of v8, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v8, :cond_5

    :cond_4
    move-object v8, v1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_4

    .line 66
    invoke-interface {v4, v0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/style/TextIndent;

    move-object v8, v0

    :goto_3
    const/4 v0, 0x4

    .line 285
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    invoke-static {v4}, Landroidx/compose/ui/text/Savers_androidKt;->getSaver(Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .line 65
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    instance-of v9, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v9, :cond_7

    :cond_6
    move-object v9, v1

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_6

    .line 66
    invoke-interface {v4, v0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/PlatformParagraphStyle;

    move-object v9, v0

    :goto_4
    const/4 v0, 0x5

    .line 286
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/text/style/LineHeightStyle;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    invoke-static {v4}, Landroidx/compose/ui/text/SaversKt;->getSaver(Landroidx/compose/ui/text/style/LineHeightStyle$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .line 65
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    instance-of v10, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v10, :cond_9

    :cond_8
    move-object v10, v1

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_8

    .line 66
    invoke-interface {v4, v0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle;

    move-object v10, v0

    :goto_5
    const/4 v0, 0x6

    .line 287
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-static {v4}, Landroidx/compose/ui/text/Savers_androidKt;->getSaver(Landroidx/compose/ui/text/style/LineBreak$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .line 65
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    instance-of v11, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v11, :cond_b

    :cond_a
    move-object v0, v1

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_a

    .line 66
    invoke-interface {v4, v0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/style/LineBreak;

    :goto_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak;->unbox-impl()I

    move-result v11

    const/4 v0, 0x7

    .line 288
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 93
    check-cast v0, Landroidx/compose/ui/text/style/Hyphens;

    goto :goto_7

    :cond_c
    move-object v0, v1

    :goto_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/Hyphens;->unbox-impl()I

    move-result v12

    const/16 v0, 0x8

    .line 289
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/compose/ui/text/style/TextMotion;->Companion:Landroidx/compose/ui/text/style/TextMotion$Companion;

    invoke-static {v0}, Landroidx/compose/ui/text/Savers_androidKt;->getSaver(Landroidx/compose/ui/text/style/TextMotion$Companion;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    .line 65
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    instance-of v4, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_e

    :cond_d
    move-object p1, v1

    goto :goto_8

    :cond_e
    if-eqz p1, :cond_d

    .line 66
    invoke-interface {v0, p1}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/style/TextMotion;

    :goto_8
    const/4 v13, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v6

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move v8, v11

    move v9, v12

    move-object v10, p1

    move-object v11, v13

    .line 280
    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/ParagraphStyle;

    move-result-object p0

    return-object p0
.end method
