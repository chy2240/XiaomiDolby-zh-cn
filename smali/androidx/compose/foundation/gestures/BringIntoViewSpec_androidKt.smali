.class public abstract Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;
.super Ljava/lang/Object;
.source "BringIntoViewSpec.android.kt"


# static fields
.field private static final LocalBringIntoViewSpec:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$LocalBringIntoViewSpec$1;->INSTANCE:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$LocalBringIntoViewSpec$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalWithComputedDefaultOf(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 49
    new-instance v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$PivotBringIntoViewSpec$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-void
.end method

.method public static final getLocalBringIntoViewSpec()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 36
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->LocalBringIntoViewSpec:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final getPivotBringIntoViewSpec()Landroidx/compose/foundation/gestures/BringIntoViewSpec;
    .locals 1

    .line 48
    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->PivotBringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    return-object v0
.end method
