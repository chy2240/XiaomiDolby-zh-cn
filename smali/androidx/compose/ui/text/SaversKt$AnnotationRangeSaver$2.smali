.class final Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Savers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    invoke-direct {v0}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

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
.method public final invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 5

    .line 171
    const-string p0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const/4 p0, 0x0

    .line 172
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 93
    check-cast p0, Landroidx/compose/ui/text/AnnotationType;

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 172
    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 173
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    check-cast v1, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 173
    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x3

    .line 174
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 93
    check-cast v2, Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 174
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x4

    .line 175
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 93
    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v3, v0

    .line 175
    :goto_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 177
    sget-object v4, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v4, p0

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_0

    .line 204
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 203
    :pswitch_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 93
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 203
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 204
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 205
    invoke-static {v0}, Landroidx/compose/ui/text/StringAnnotation;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/text/StringAnnotation;->box-impl(Ljava/lang/String;)Landroidx/compose/ui/text/StringAnnotation;

    move-result-object p1

    .line 204
    invoke-direct {p0, p1, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    goto/16 :goto_a

    .line 199
    :pswitch_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getClickableSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object p1

    .line 65
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, p1, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p0, :cond_6

    .line 66
    invoke-interface {p1, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 199
    :cond_6
    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 200
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    goto/16 :goto_a

    .line 195
    :pswitch_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getLinkSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object p1

    .line 65
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    instance-of v4, p1, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    if-eqz p0, :cond_8

    .line 66
    invoke-interface {p1, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 195
    :cond_8
    :goto_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 196
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    goto/16 :goto_a

    .line 191
    :pswitch_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getUrlAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object p1

    .line 65
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    instance-of v4, p1, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    if-eqz p0, :cond_a

    .line 66
    invoke-interface {p1, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 191
    :cond_a
    :goto_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 192
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    goto/16 :goto_a

    .line 187
    :pswitch_4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->access$getVerbatimTtsAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;

    move-result-object p1

    .line 65
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    instance-of v4, p1, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    if-eqz p0, :cond_c

    .line 66
    invoke-interface {p1, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 187
    :cond_c
    :goto_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 188
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    goto :goto_a

    .line 183
    :pswitch_5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object p1

    .line 65
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    instance-of v4, p1, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    if-eqz p0, :cond_e

    .line 66
    invoke-interface {p1, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    .line 183
    :cond_e
    :goto_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 184
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    goto :goto_a

    .line 179
    :pswitch_6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/ui/text/SaversKt;->getParagraphStyleSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object p1

    .line 65
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    instance-of v4, p1, Landroidx/compose/ui/text/NonNullValueClassSaver;

    if-nez v4, :cond_f

    goto :goto_9

    :cond_f
    if-eqz p0, :cond_10

    .line 66
    invoke-interface {p1, p0}, Landroidx/compose/runtime/saveable/Saver;->restore(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/text/ParagraphStyle;

    .line 179
    :cond_10
    :goto_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 180
    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    :goto_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->invoke(Ljava/lang/Object;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    return-object p0
.end method
