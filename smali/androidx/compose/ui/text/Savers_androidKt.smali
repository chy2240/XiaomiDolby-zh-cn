.class public abstract Landroidx/compose/ui/text/Savers_androidKt;
.super Ljava/lang/Object;
.source "Savers.android.kt"


# static fields
.field private static final LineBreakSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final PlatformParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextMotionSaver:Landroidx/compose/runtime/saveable/Saver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    sget-object v0, Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$PlatformParagraphStyleSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/Savers_androidKt;->PlatformParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 42
    sget-object v0, Landroidx/compose/ui/text/Savers_androidKt$LineBreakSaver$1;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$LineBreakSaver$1;

    sget-object v1, Landroidx/compose/ui/text/Savers_androidKt$LineBreakSaver$2;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$LineBreakSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/Savers_androidKt;->LineBreakSaver:Landroidx/compose/runtime/saveable/Saver;

    .line 48
    sget-object v0, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$1;

    sget-object v1, Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;->INSTANCE:Landroidx/compose/ui/text/Savers_androidKt$TextMotionSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/Savers_androidKt;->TextMotionSaver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public static final getSaver(Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 24
    sget-object p0, Landroidx/compose/ui/text/Savers_androidKt;->PlatformParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/LineBreak$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 39
    sget-object p0, Landroidx/compose/ui/text/Savers_androidKt;->LineBreakSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/TextMotion$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    .line 45
    sget-object p0, Landroidx/compose/ui/text/Savers_androidKt;->TextMotionSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method
