.class final Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;

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
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/TextLinkStyles;
    .locals 6

    .line 346
    const-string p0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 p0, 0x0

    .line 347
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    .line 65
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v2, :cond_1

    :cond_0
    move-object p0, v3

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_0

    .line 66
    invoke-interface {v0, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/SpanStyle;

    :goto_0
    const/4 v0, 0x1

    .line 348
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v2

    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v2, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_3

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v2, v0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    :goto_1
    const/4 v2, 0x2

    .line 349
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .line 65
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v5, :cond_5

    :cond_4
    move-object v2, v3

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_4

    .line 66
    invoke-interface {v4, v2}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    :goto_2
    const/4 v4, 0x3

    .line 350
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    .line 65
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v1, v4, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 66
    invoke-interface {v4, p1}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/text/SpanStyle;

    .line 351
    :cond_7
    :goto_3
    new-instance p1, Landroidx/compose/ui/text/TextLinkStyles;

    invoke-direct {p1, p0, v0, v2, v3}, Landroidx/compose/ui/text/TextLinkStyles;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object p0

    return-object p0
.end method
