.class public final Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $maxLines$inlined:I

.field final synthetic $minLines$inlined:I

.field final synthetic $textStyle$inlined:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>(IILandroidx/compose/ui/text/TextStyle;)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$$inlined$debugInspectorInfo$1;->$minLines$inlined:I

    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$$inlined$debugInspectorInfo$1;->$maxLines$inlined:I

    iput-object p3, p0, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$$inlined$debugInspectorInfo$1;->$textStyle$inlined:Landroidx/compose/ui/text/TextStyle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-static {p1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$heightInLines$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const/4 p0, 0x0

    .line 111
    throw p0
.end method
