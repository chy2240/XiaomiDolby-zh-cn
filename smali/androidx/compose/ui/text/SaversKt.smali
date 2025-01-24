.class public abstract Landroidx/compose/ui/text/SaversKt;
.super Ljava/lang/Object;
.source "Savers.kt"


# static fields
.field private static final AnnotatedStringSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final AnnotationRangeSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final BaselineShiftSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final ClickableSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final ColorSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

.field private static final FontWeightSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final LineHeightStyleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final LinkSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final LocaleListSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final LocaleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final OffsetSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

.field private static final ParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final ShadowSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final SpanStyleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextDecorationSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextIndentSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextLinkStylesSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextRangeSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextUnitSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

.field private static final UrlAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 97
    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 117
    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 140
    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 216
    sget-object v0, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 223
    sget-object v0, Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 226
    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 243
    sget-object v0, Landroidx/compose/ui/text/SaversKt$ClickableSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ClickableSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ClickableSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ClickableSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 264
    sget-object v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 295
    sget-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 336
    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 359
    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 365
    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 377
    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 397
    sget-object v0, Landroidx/compose/ui/text/SaversKt$FontWeightSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$FontWeightSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$FontWeightSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$FontWeightSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 403
    sget-object v0, Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 409
    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextRangeSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextRangeSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 421
    sget-object v0, Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 443
    sget-object v0, Landroidx/compose/ui/text/SaversKt$ColorSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ColorSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/SaversKt;->NonNullValueClassSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/NonNullValueClassSaver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 464
    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextUnitSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextUnitSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextUnitSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextUnitSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/SaversKt;->NonNullValueClassSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/NonNullValueClassSaver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 486
    sget-object v0, Landroidx/compose/ui/text/SaversKt$OffsetSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$OffsetSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$OffsetSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$OffsetSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/SaversKt;->NonNullValueClassSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/NonNullValueClassSaver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

    .line 508
    sget-object v0, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 520
    sget-object v0, Landroidx/compose/ui/text/SaversKt$LocaleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 529
    sget-object v0, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LineHeightStyleSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method private static final NonNullValueClassSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/NonNullValueClassSaver;
    .locals 1

    .line 79
    new-instance v0, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final synthetic access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getAnnotationRangeSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getClickableSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getLinkSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getUrlAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getVerbatimTtsAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final getAnnotatedStringSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 96
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final getParagraphStyleSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 263
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final getSaver(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 483
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 440
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/graphics/Shadow$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 418
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/TextRange$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 406
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 394
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/intl/Locale$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 517
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/intl/LocaleList$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 505
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/BaselineShift$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 400
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/LineHeightStyle$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 526
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/TextDecoration$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 356
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 362
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/TextIndent$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 374
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 461
    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/NonNullValueClassSaver;

    return-object p0
.end method

.method public static final getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 294
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final getTextLinkStylesSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 335
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final save(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static final save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p1, p2, p0}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    return-object p0
.end method
